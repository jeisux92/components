import 'dart:convert';

import 'package:flutter/services.dart';

class _MenuProvider {
  List<dynamic> options = [];
    
  Future<List<dynamic>> loadData() async {
    Map dataMap =
        json.decode(await rootBundle.loadString('data/menu_opts.json'));
    options = dataMap['rutas'];
    return options;
  }
}

final menuProvider = _MenuProvider();
