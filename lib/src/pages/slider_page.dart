import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 50.0;
  bool _enabledCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sliders')),
      body: Container(
        padding: EdgeInsetsDirectional.only(top: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _createSlider(),
            _createCheckbox(),
            _createSwitch(),
            Expanded(
              child: Center(
                child: _createImage(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.redAccent,
      divisions: 400,
      label: 'Tamaño de la imagen $_sliderValue',
      min: 0,
      max: 400,
      value: _sliderValue,
      onChanged: _enabledCheck
          ? (double value) {
              if (_enabledCheck) {
                setState(() {
                  _sliderValue = value;
                });
              }
            }
          : null,
    );
  }

  Widget _createImage() {
    return Image(
      height: _sliderValue,
      width: _sliderValue,
      image: NetworkImage(
          'https://i0.pngocean.com/files/263/513/80/joker-harley-quinn-batman-robin-dc-animated-universe-joker.jpg'),
    );
  }

  Widget _createCheckbox() {
    // return Row(
    //   children: <Widget>[
    //     Checkbox(
    //       onChanged: (bool value) {
    //         setState(() {
    //           _enabledCheck = value;
    //         });
    //       },
    //       value: _enabledCheck,
    //     ),
    //     Text('Bloquear slider'),
    //   ],
    // );

    return CheckboxListTile(
      title: Text('Bloquear slider'),
      subtitle: Text('Esto es una funcinalidad no clara'),
      onChanged: (bool value) {
        setState(() {
          _enabledCheck = value;
        });
      },
      value: _enabledCheck,
    );
  }

  Widget _createSwitch() {
    //    return Row(
    //     children: <Widget>[
    //       Switch(
    //         onChanged: (bool value) {
    //           setState(() {
    //             _enabledCheck = value;
    //           });
    //         },
    //         value: _enabledCheck,
    //       ),
    //       Text('Bloquear slider'),
    //     ],
    //   );
    // }
    return SwitchListTile(
      title: Text('Bloquear slider'),
      subtitle: Text('Esto es una funcinalidad no clara'),
      onChanged: (bool value) {
        setState(() {
          _enabledCheck = value;
        });
      },
      value: _enabledCheck,
    );
  }
}
