import 'package:flutter_practice_i18n/translation/base_translation.dart';
import 'package:flutter_practice_i18n/translation/mixin/app1_combine.dart';

class App1TranslationService extends BaseTranslation with App1Combine {
  static final App1TranslationService _instance = App1TranslationService._();

  static App1TranslationService getInstance() {
    return _instance;
  }

  App1TranslationService._();

  static Future<void> init() async {
    await _instance.combineMainTranslation();
    await _instance.combineServicesTranslation();
  }

  ///取得多國語資料map
  @override
  Map<String, Map<String, String>> get keys {
    var map = {
      'zh_TW': zhTw,
      'zh_CN': zhCn,
      'en': en,
      'ja': ja,
      'ko': ko,
    };

    map.removeWhere((key, value) {
      return (supportList.lastIndexOf(key) == -1);
    });
    return map;
  }
}