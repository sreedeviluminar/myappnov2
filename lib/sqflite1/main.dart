import 'package:flutter/material.dart';
import 'package:myappnov2/sqflite1/sqloperation.dart';

void main() {
  runApp(MaterialApp(
    home: HomeStorage(),
  ));
}

class HomeStorage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeStorageState();
}

class HomeStorageState extends State {
  bool isloading = true;
  List<Map<String, dynamic>> datas = [];

  void refreshdata() async {
    final data = await SqlHelper.getItems();
    setState(() {
      datas = data;
      isloading = false;
    });
  }

  @override
  void initState() {
    refreshdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sqflite Demo'),
      ),
      body: isloading
          ? const CircularProgressIndicator()
          : ListView.builder(
              itemCount: datas.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(datas[index]['title']),
                    subtitle: Text(datas[index]['description']),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () => showform(datas[index]['id']),
                              icon: const Icon(Icons.edit_calendar_outlined)),
                          IconButton(
                              onPressed: () => deleteitem(datas[index]['id']),
                              icon: Icon(Icons.delete))
                        ],
                      ),
                    ),
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showform(null),
        child: const Icon(Icons.add),
      ),
    );
  }

  final title_controller       = TextEditingController();
  final description_controller = TextEditingController();

  void showform(int? id) async {
    if (id != null) {
      //id == null  create new   id != null   update
      final existingData = datas.firstWhere((element) => element['id'] == id);
      title_controller.text = existingData['title'];
      description_controller.text = existingData['description'];
    }
    showModalBottomSheet(
        context: context,
        elevation: 5,
        isScrollControlled: true,
        builder: (context) => Container(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
                top: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    controller: title_controller,
                    decoration: const InputDecoration(hintText: "Title"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: description_controller,
                    decoration: const InputDecoration(hintText: "Description"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        if (id == null) {
                          await createItem();
                        }
                        if (id != null) {
                          await updateItem(id);
                        }
                        title_controller.text = '';
                        description_controller.text ='';
                        Navigator.of(context).pop();
                      },
                      child: Text(id == null ? 'Create New' : "Update"))
                ],
              ),
            ));
  }

  Future<void> createItem() async {
    await SqlHelper.create_item(title_controller.text, description_controller.text);
    refreshdata();
  }

  void deleteitem(int id) async {
    await SqlHelper.deleteItem(id);
    refreshdata();
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Successfully Deleted")));
  }

 Future<void> updateItem(int id)  async{
   await SqlHelper.updateItem(id,title_controller.text,description_controller.text);
   refreshdata();
 }
}
