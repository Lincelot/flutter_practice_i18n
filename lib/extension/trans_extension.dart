import 'package:get/get.dart';

extension TransExtension on String {
  String transParams([Map<String, String> params = const {}]) {
    var trans = tr;
    if (params.isNotEmpty) {
      params.forEach((key, value) {
        trans = trans.replaceAll('{{$key}}', value);
      });
    }
    return trans;
  }
}
