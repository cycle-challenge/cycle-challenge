
import 'dart:io';

class OAuthClientId {

  static const _IOS_CLIENT_ID = String.fromEnvironment('IOS_CLIENT_ID');
  static const _ANDROID_CLIENT_ID = String.fromEnvironment('ANDROID_CLIENT_ID');

  static String? get CLIENT_ID {
    if (Platform.isIOS) return _IOS_CLIENT_ID;
    if (Platform.isAndroid) return _ANDROID_CLIENT_ID;

    return null;
  }

}