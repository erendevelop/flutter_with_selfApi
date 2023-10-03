import 'package:flutter/material.dart';
import 'package:integration/user_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List id = [];
  List username = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, () => fetchData(),);
  }
  Future<void> fetchData() async {
    List generalData = await getData();
    setState(() {
      for(int i = 0; i < generalData.length; i++){
        username.add(generalData[i]["username"]);
        id.add(generalData[i]["id"]);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: username.isEmpty && id.isEmpty ? CircularProgressIndicator() :
        SingleChildScrollView(
          child: Column(
            children: [
              for(int i = 0; i < username.length; i++)
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    subtitle: Text("Username: ${username[i]}"),
                    title: Text("ID: ${id[i]}"),
                  ),
                ),
            ],
          ),
        )
      )
    );
  }
}
