import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final List<String> options = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Six'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Components Temp'),
        ),
        body: ListView.builder(
          itemCount: options.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.account_balance_wallet),
                  title: Text(options[index]),
                  trailing: Icon(Icons.arrow_right),
                  onTap: (){},
                ),
                Divider()
              ],
            );
          },
        ));
    // body: ListView(
    //   children: _createList(),
    // ));
  }

  List<Widget> _createList() {
    return options
        .map((op) => Column(
              children: <Widget>[
                ListTile(
                  title: Text(op),
                ),
                Divider()
              ],
            ))
        .toList();
  }
}
