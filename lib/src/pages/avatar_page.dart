import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('GM'),
              backgroundColor: Colors.green,
            ),
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage(
                  'https://scontent.fbog3-1.fna.fbcdn.net/v/t31.0-8/s960x960/23415584_10213809247400599_7128561375376348675_o.jpg?_nc_cat=108&_nc_sid=85a577&_nc_ohc=OOuaNWgJnT8AX-zGiFR&_nc_ht=scontent.fbog3-1.fna&_nc_tp=7&oh=74f0fcff7dc0937dd838343658532589&oe=5E9E42EBhttps://scontent.fbog3-1.fna.fbcdn.net/v/t31.0-8/s960x960/23415584_10213809247400599_7128561375376348675_o.jpg?_nc_cat=108&_nc_sid=85a577&_nc_ohc=OOuaNWgJnT8AX-zGiFR&_nc_ht=scontent.fbog3-1.fna&_nc_tp=7&oh=74f0fcff7dc0937dd838343658532589&oe=5E9E42EB'),
            ),
          )
        ],
        //shape: RoundedRectangleBorder(),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25.0),
          ),
        ),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: FadeInImage(
            height: 300.00,
            fadeInDuration: Duration(milliseconds: 200),
            image: NetworkImage(
                'https://scontent.fbog3-1.fna.fbcdn.net/v/t31.0-8/s960x960/23415584_10213809247400599_7128561375376348675_o.jpg?_nc_cat=108&_nc_sid=85a577&_nc_ohc=OOuaNWgJnT8AX-zGiFR&_nc_ht=scontent.fbog3-1.fna&_nc_tp=7&oh=74f0fcff7dc0937dd838343658532589&oe=5E9E42EBhttps://scontent.fbog3-1.fna.fbcdn.net/v/t31.0-8/s960x960/23415584_10213809247400599_7128561375376348675_o.jpg?_nc_cat=108&_nc_sid=85a577&_nc_ohc=OOuaNWgJnT8AX-zGiFR&_nc_ht=scontent.fbog3-1.fna&_nc_tp=7&oh=74f0fcff7dc0937dd838343658532589&oe=5E9E42EB'),
            placeholder: AssetImage('assets/jar-loading.gif'),
          ),
        ),
      ),
    );
  }
}
