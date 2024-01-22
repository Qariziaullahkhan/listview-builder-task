import 'package:flutter/material.dart';
import 'package:flutter_application_12/models/data_stores.dart';
import 'package:flutter_application_12/models/players.dart';

class ListviewBuilderScreen extends StatefulWidget {
  const ListviewBuilderScreen({super.key});

  @override
  State<ListviewBuilderScreen> createState() => _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends State<ListviewBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          centerTitle: true,
          title: const Text(
            "Listview Builder",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.builder(
            itemCount: Datasore().player.length,
            itemBuilder: (BuildContext context, int index) {
              Players players = Datasore().player[index];
              return ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                    players.images,
                  ),
                ),
                title: Text(
                  players.name,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  players.role,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                ),
                trailing: Text(
                  players.country,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              );
            }));
  }
}
