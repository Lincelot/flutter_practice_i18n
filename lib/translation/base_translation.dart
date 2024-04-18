import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BaseTranslation extends Translations {
  /// 支援語系
  final Map<String, String> zhTw = {};
  final Map<String, String> zhCn = {};
  final Map<String, String> en = {};
  final Map<String, String> ja = {};
  final Map<String, String> ko = {};

  ///目前語系
  var locale = const Locale('zh', 'TW');

  ///預設語系
  var fallbackLocale = const Locale('zh', 'TW');

  ///支援語系列表
  var supportList = <String>['en', 'ja', 'ko', 'zh_TW', 'zh_CN'];

  ///更新目前語系
  void updateLocale(String lang) {
    switch (lang) {
      case "en":
        locale = const Locale("en");
        break;
      case "ja":
        locale = const Locale("ja");
        break;
      case "ko":
        locale = const Locale("ko");
        break;
      case "zh-cn":
        locale = const Locale("zh", "CN");
        break;
      case "zh-tw":
        locale = const Locale("zh", "TW");
        break;
    }
    fallbackLocale = locale;
    Get.fallbackLocale = locale;
    Get.updateLocale(locale);
  }

  ///更新支援語系
  void updateSupportList(List<String> array) {
    supportList = array;

    ///刷新多國語資料
    Get.addTranslations(keys);
  }
}
