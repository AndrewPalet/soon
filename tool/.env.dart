import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  final config = {
    'TENANT_ID': Platform.environment['TENANT_ID'],
    'CLIENT_ID': Platform.environment['CLIENT_ID'],
    'CLIENT_SECRET': Platform.environment['CLIENT_SECRET'],
    'BASE_API_URI': Platform.environment['BASE_API_URI'],
    'APPCENTER_ANDROID_SECRET':
    Platform.environment['APPCENTER_ANDROID_SECRET'],
    'API_SCOPE': Platform.environment['API_SCOPE'],
    'APPCENTER_IOS_SECRET': Platform.environment['APPCENTER_IOS_SECRET'],
  };

  final filename = 'lib/.env.dart';
  File(filename).writeAsString('final environment = ${json.encode(config)};');
}
