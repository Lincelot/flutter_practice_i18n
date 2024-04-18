import 'package:flutter_practice_i18n/extension/combine_translation_extension.dart';
import 'package:flutter_practice_i18n/translation/base_translation.dart';
import 'package:flutter_practice_i18n/translation/combine_interface.dart';

mixin App1Combine on BaseTranslation implements CombineInterface {
  @override
  Future<void> combineMainTranslation() async {
    await zhCn.combineTranslation('packages/flutter_practice_i18n/assets/app1/zh_Hans.json');
    await zhTw.combineTranslation('packages/flutter_practice_i18n/assets/app1/zh_Hant.json');
    await en.combineTranslation('packages/flutter_practice_i18n/assets/app1/en_US.json');
    await ja.combineTranslation('packages/flutter_practice_i18n/assets/app1/ja_JP.json');
    await ko.combineTranslation('packages/flutter_practice_i18n/assets/app1/ko_KR.json');
  }

  @override
  Future<void> combineServicesTranslation() async {
    await zhCn.combineTranslation('packages/flutter_practice_i18n/assets/services/zh_Hans.json');
    await zhTw.combineTranslation('packages/flutter_practice_i18n/assets/services/zh_Hant.json');
    await en.combineTranslation('packages/flutter_practice_i18n/assets/services/en_US.json');
    await ja.combineTranslation('packages/flutter_practice_i18n/assets/services/ja_JP.json');
    await ko.combineTranslation('packages/flutter_practice_i18n/assets/services/ko_KR.json');
  }
}