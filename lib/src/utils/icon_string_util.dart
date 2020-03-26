import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'donut_large': Icons.donut_large,
  'inputs': Icons.input,
  'lists': Icons.list,
  'tune': Icons.tune,
  'lists': Icons.list
};

Icon getIcon(String iconName) => Icon(
      _icons[iconName],
      color: Colors.blueAccent,
    );
