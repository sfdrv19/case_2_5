import 'package:flutter/material.dart';

class ListViewCase extends StatelessWidget {
  const ListViewCase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Список из 20-ти контейнеров"),
          backgroundColor: Colors.amber,
          foregroundColor: const Color(0xff410D03),
        ),
        body: const MyTapList(),
      ),
    );
  }
}

class MyTapList extends StatefulWidget {
  const MyTapList({Key? key}) : super(key: key);

  @override
  _MyTapListState createState() => _MyTapListState();
}

int _listItemSelected = 0;

class _MyTapListState extends State<MyTapList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(border: Border.all()),
            child: ListTile(
              title: Text("${index + 1}-й контейнер"),
              selectedTileColor: Colors.yellow,
              selected: _listItemSelected == index,
              onTap: () {
                setState(() {
                  _listItemSelected = index;
                });
              },
            ),
          );
        });
  }
}
