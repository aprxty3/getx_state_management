import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MyTranslation extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en': {
          'home_title': 'Homepage',
          'body': 'Click Me',
        },
        'id': {
          'home_title': 'Rumah',
          'body': 'Klik Saya',
        }
      };
}
