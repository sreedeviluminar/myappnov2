import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("mybox");
  runApp(MaterialApp(
    home: HiveDemo(),
  ));
}

class HiveDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HiveDemoState();
}

class HiveDemoState extends State {
  List<Map<String, dynamic>> items = [];

  final box = Hive.box('mybox');

  @override
  void initState() {
    super.initState();
    _refreshItems();
  }

  void _refreshItems() {
    final item = box.keys.map((key) {
      final value = box.get(key);
      return {"key": key, "name": value["name"], "quantity": value['quantity']};
    }).toList();
    setState(() {
      items = item.reversed.toList();
    });
  }

  // Create new item
  Future<void> additem(Map<String, dynamic> newItem) async {
    await box.add(newItem);
    _refreshItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hive 1"),
      ),
      body: items.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: items.length,
              itemBuilder: (_, index) {
                final currentItem = items[
                    index]; // fetching a single key - value pair from the list
                return Card(
                  margin: const EdgeInsets.all(10),
                  //elevation: 3,
                  child: ListTile(
                    title: Text(currentItem['name']),
                    subtitle: Text(currentItem['quantity'].toString()),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      // if both main axis size and elevation is missing nothing will appear
                      // if main axis size is there then the list of card will appear
                      children: [
                        IconButton(
                            onPressed: () {
                              _showForm(context, currentItem['key']);
                            },
                            icon: const Icon(Icons.edit)),
                        IconButton(
                            onPressed: () {
                              deleteitem(currentItem['key']);
                            },
                            icon: const Icon(Icons.delete))
                      ],
                    ),
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showForm(context, null),
        child: const Icon(Icons.add),
      ),
    );
  }

  final name_controller = TextEditingController();
  final quantity_controller = TextEditingController();

  _showForm(BuildContext context, int? itemKey) async {
    if (itemKey != null) {
      final existingData =
          items.firstWhere((element) => element['key'] == itemKey);
      name_controller.text = existingData['name'];
      quantity_controller.text = existingData['quantity'];
    }
    showModalBottomSheet(
        isScrollControlled: true,
        elevation: 3,
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              top: 15,
              left: 15,
              right: 15,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextField(
                  controller: name_controller,
                  decoration: const InputDecoration(hintText: 'Name'),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: quantity_controller,
                  decoration: const InputDecoration(hintText: 'Quantity'),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () async {
                      if (itemKey == null) {
                        additem({
                          'name': name_controller.text,
                          'quantity': quantity_controller.text
                        });
                      }
                      if (itemKey != null) {
                        updateitem(itemKey, {
                          'name': name_controller.text.trim(),
                          'quantity': quantity_controller.text.trim()
                        });
                      }
                      name_controller.text = '';
                      quantity_controller.text = '';
                      Navigator.of(context).pop();
                    },
                    child: Text(itemKey == null ? "Create New" : "Update item"))
              ],
            ),
          );
        });
  }

  Future<void> updateitem(int itemkey, Map<String, dynamic> data) async{
     await box.put(itemkey, data);
     _refreshItems();
  }

  Future<void> deleteitem(int itemkey) async{
    await box.delete(itemkey);
    _refreshItems();

    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Successfully Deleted the item")));
  }
}
