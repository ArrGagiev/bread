import 'package:shared_preferences/shared_preferences.dart';

class TokenLocalRepository {
  static const String _accessTokenKey = 'accessToken';

  Future<String> setAccessToken(String token) async {
    final sharedPrefs = await SharedPreferences.getInstance();
    await sharedPrefs.setString(_accessTokenKey, token);
    return token;
  }

  Future<String> getAccessToken() async {
    final sharedPrefs = await SharedPreferences.getInstance();
    return sharedPrefs.getString(_accessTokenKey) ?? '';
  }

  Future<bool> removeAccessToken() async {
    final sharedPrefs = await SharedPreferences.getInstance();
    return sharedPrefs.remove(_accessTokenKey);
  }

  //--------------------------------------------------------------

  static const String _refreshTokenKey = 'refreshToken';

  Future<String> setRefreshToken(String token) async {
    final sharedPrefs = await SharedPreferences.getInstance();
    await sharedPrefs.setString(_refreshTokenKey, token);
    return token;
  }

  Future<String> getRefreshToken() async {
    final sharedPrefs = await SharedPreferences.getInstance();
    return sharedPrefs.getString(_refreshTokenKey) ?? '';
  }

  Future<bool> removeRefreshToken() async {
    final sharedPrefs = await SharedPreferences.getInstance();
    return sharedPrefs.remove(_refreshTokenKey);
  }
}
