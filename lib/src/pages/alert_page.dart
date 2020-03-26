import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
            onPressed: () => _showAlert(context),
            color: Colors.blue,
            textColor: Colors.white,
            child: Text('Show alert'),
            shape: StadiumBorder()
            //RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
            ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('This is the content'),
                FlutterLogo(
                  size: 100.0,
                  colors: Colors.red,
                )
              ],
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Cancel'),
                textColor: Colors.red,
              ),
              FlatButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Ok'),
              )
            ],
          );
          // return AlertDialog(
          //   title: Text('Rewind and remember'),
          //   content: SingleChildScrollView(
          //     child: ListBody(
          //       children: <Widget>[
          //         Text('You will never be satisfied.'),
          //         Text('You\’re like me. I’m never satisfied.'),
          //       ],
          //     ),
          //   ),
          //   actions: <Widget>[
          //     FlatButton(
          //       child: Text('Regret'),
          //       onPressed: () {
          //         Navigator.of(context).pop();
          //       },
          //     ),
          //   ],
          // );
        });
  }
}
