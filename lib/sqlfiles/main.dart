import 'package:flutter/material.dart';
import 'package:myappnov/sqlfiles/sqloperation.dart';

void main() {
  runApp(const MaterialApp(
    home: HomeStorage(),
  ));
}

class HomeStorage extends StatefulWidget {
  const HomeStorage({super.key});

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
      if (datas != null) {
        isloading = false;
      }
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
          itemBuilder: (context, int) {
            return  Card(
              child: ListTile(
                title: Text(datas[int]['title']),
                subtitle: Text(datas[int]['description']),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showform(null),
        child: const Icon(Icons.add),
      ),
    );
  }

  final title_controller = TextEditingController();
  final description_controller = TextEditingController();

  void showform(int? id) async {
    if (id != null) {
      //id == null  create new   id != null   update
      final existingData = datas.firstWhere((element) => element[id] == id);
      title_controller.text       = existingData['title'];
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
                      //  await updateItem();
                    }
                    title_controller.text = '';
                    description_controller.clear();
                    Navigator.of(context).pop();
                  },
                  child: Text(id == null ? 'Create New' : "Update"))
            ],
          ),
        ));
  }

  Future<void> createItem() async {
    await SqlHelper.create_item(title_controller.text , description_controller.text);
    refreshdata();
  }
}