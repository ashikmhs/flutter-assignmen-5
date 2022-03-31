import 'package:assignment5/languages/ban.dart';
import 'package:assignment5/languages/eng.dart';
import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': eng,
        'bn_BD': ban,
      };
}
