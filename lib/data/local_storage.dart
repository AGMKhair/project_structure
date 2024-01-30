import 'package:shared_preferences/shared_preferences.dart';

/**
 *  PROJECT_NAME:-  project_structure
 *  Project Created by AGM Khair Sabbir
 *  DATE:- 30/1/24
 */
class LocalStorage {
  static late final SharedPreferences storeSharedPreferences;
  static Future init() async {
    storeSharedPreferences = await SharedPreferences.getInstance();
  }
}
