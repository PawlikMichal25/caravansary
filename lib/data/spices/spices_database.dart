import 'dart:convert';

import 'package:caravansary/commons/resources/assets.dart';
import 'package:caravansary/data/spices/model/spice.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class SpicesDatabase {
  Future<List<Spice>> getAllSpices() async {
    final json = await rootBundle.loadString(Assets.spices);
    return compute(_parseSpices, json);
  }
}

Future<List<Spice>> _parseSpices(String json) async {
  final jsonArray = jsonDecode(json) as List<dynamic>;
  final spices = jsonArray.map((dynamic spice) => Spice.fromJson(spice as Map<String, dynamic>)).toList();
  return spices;
}
