import 'package:flutter/material.dart';
import 'package:latihan_bloc/pages/add/add.dart';
import 'package:latihan_bloc/pages/edit/edit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ALL USERS'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditPage(),
                  ));
            },
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            title: Text('Nama User'),
            subtitle: Text('Umur User'),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddPage(),
              ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
