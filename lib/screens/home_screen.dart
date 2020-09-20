import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final items = <String>[
    'First item',
    'First item',
    'First item',
    'First item',
    'First item',
    'First item',
    'First item'
  ];
  // render
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text(
          'Theme Changer Redux',
          style: TextStyle(
            color: Theme.of(context).accentColor,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () => Navigator.pushNamed(context, '/settings'),
          ),
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (_, index) {
            return Container(
              margin: EdgeInsets.only(top: 10),
              color: Theme.of(context).primaryColor,
              child: ListTile(
                dense: true,
                title: Text(
                  items[index],
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
