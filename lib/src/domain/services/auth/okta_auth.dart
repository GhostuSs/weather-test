
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';

class OktaAuth{

  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  static const _secureStorageKey = 'ZQrjW2ife4323';
  final secureKey = Hive.generateSecureKey();
  static const String _oktaDomain = 'dev-80926633.okta.com';
  static const String _oktaAuthorizer = 'default';

  static const String _oktaClientId = '0oa8p50skqqUUkh6O5d7';

  static const String _oktaIssuerUrl =
      'https://$_oktaDomain/oauth2/$_oktaAuthorizer';
  static const String _oktaDiscoveryUrl =
      'https://$_oktaDomain/.well-known/openid-configuration';

  static const String _oktaRedirectUrl = 'com.okta.dev-80926633:/callback';
  static const String _oktaLogoutRedirectUrl = 'com.okta.dev-80926633:/';


  Future<Map<String,dynamic>> signInWithEmailAndPass({required String email,required String password}) async {
    const String route = 'https://$_oktaDomain/api/v1/authn';
    Response<dynamic>? response;
    try{
      response = await Dio().post(route,data: {
        'username':email,
        'password':password,
      });
      final String? _sessionToken =response.data['sessionToken'];
      if(_sessionToken!=null){
        await saveUserToken(token: _sessionToken);
      }
    }catch(e){
      debugPrint(e.toString());
    }
    return {'status':response?.statusCode==200 ? true : false ,"msg":response?.statusMessage};

  }

  Future<void> saveUserToken({required String token}) async {
    try {
      final encryptedBox = await Hive.openBox('encrypt', encryptionKey: secureKey);
      await encryptedBox.put('token', token);
      await _storage.write(
        key: _secureStorageKey,
        value: json.encode(secureKey),
      );
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<bool> checkAccess() async {
    const String route = 'https://$_oktaDomain/api/v1/sessions';
    final String? _token = await retrieveUserToken();
    if(_token!=null)await Dio().post(route,data: {'sessionToken':_token}).then((value) => print(value.data));
    return false;
  }

  Future<String?> retrieveUserToken() async {
    try {
      final secureKey = await _storage.read(key: _secureStorageKey,);
      List<int> encryptionKey = (json.decode(secureKey!) as List<dynamic>).cast<int>();
      final encryptedBox = await Hive.openBox('encrypt', encryptionKey: encryptionKey);
      String token = encryptedBox.get('token');
      encryptedBox.close();
      return token;
    } catch (e) {
      print('retrieve');
      debugPrint(e.toString());
    }
    return null;
  }

}