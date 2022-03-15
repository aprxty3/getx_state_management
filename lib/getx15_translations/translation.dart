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
          'home_title': 'Rumah @kakak dan @adik',
          'body': 'Klik Saya',
        },
        'en_btw': {
          'home_title': 'Rumeh',
          'body': 'Klik aye',
        },
      };
}
