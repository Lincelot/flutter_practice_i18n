import 'dart:convert';

import 'package:flutter/services.dart';

extension CombineTranslationExtension on Map<String, String> {
  Future<void> combineTranslation(String path) async {
    addAll(Map.castFrom<String, dynamic, String, String>(
        jsonDecode(await rootBundle.loadString(path))));
  }
}
