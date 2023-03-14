import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:smartavia_weather/src/domain/appconfig/url_routes.dart';

///AuthService base on Okta API
class AuthService {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  static const _secureStorageKey = 'ZQrjW2ife4323';
  final _secureKey = Hive.generateSecureKey();
  static const String _oktaDomain = 'dev-80926633.okta.com';

  // static const String _oktaAuthorizer = 'default';
  // static const String _oktaClientId = '0oa8p50skqqUUkh6O5d7';

  ///sign in via e-mail and pass method
  Future<Map<String, dynamic>> signInWithEmailAndPass(
      {required String email, required String password}) async {
    const String route = 'https://$_oktaDomain${UrlRoutes.auth}';
    Response<dynamic>? response;
    try {
      response = await Dio().post(route, data: {
        'username': email,
        'password': password,
        'scopes': ['offline_access', 'openid']
      });
      final String? _sessionToken = response.data['sessionToken'];
      if (_sessionToken != null) {
        await saveUserToken(token: _sessionToken);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return {
      'status': response?.statusCode == 200 ? true : false,
      "msg": response?.statusMessage,
    };
  }

  ///save user token
  Future<void> saveUserToken({required String token}) async {
    try {
      final encryptedBox =
          await Hive.openBox('encrypt', encryptionKey: _secureKey);
      await encryptedBox.put('token', token);
      await _storage.write(
        key: _secureStorageKey,
        value: json.encode(_secureKey),
      );
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }

  ///check user session is valid
  Future<bool> checkAccess() async {
    final String? _token = await retrieveUserToken();
    Response? response;
    if (_token != null)
      try {
        response = await Dio().post('https://$_oktaDomain${UrlRoutes.sessions}',
            data: {'sessionToken': _token});
      } catch (e) {
        debugPrint(e.toString());
      }
    ;
    return response?.statusCode == 200;
  }

  ///get user token from secure storage
  Future<String?> retrieveUserToken() async {
    try {
      final secureKey = await _storage.read(
        key: _secureStorageKey,
      );
      List<int> encryptionKey =
          (json.decode(secureKey!) as List<dynamic>).cast<int>();
      final encryptedBox =
          await Hive.openBox('encrypt', encryptionKey: encryptionKey);
      String token = encryptedBox.get('token');
      encryptedBox.close();
      return token;
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
