import 'package:shared_preferences/shared_preferences.dart';

class PhoneLocalRepository {
  static const String _phoneKey = 'phone';

  Future<String> setPhone(String phone) async {
    final sharedPrefs = await SharedPreferences.getInstance();
    await sharedPrefs.setString(_phoneKey, phone);
    return phone;
  }

  Future<String> getPhone() async {
    final sharedPrefs = await SharedPreferences.getInstance();
    return sharedPrefs.getString(_phoneKey) ?? '';
  }

  Future<bool> removePhone() async {
    final sharedPrefs = await SharedPreferences.getInstance();
    return sharedPrefs.remove(_phoneKey);
  }
}
