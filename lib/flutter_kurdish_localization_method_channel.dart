import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_kurdish_localization_platform_interface.dart';

/// An implementation of [FlutterKurdishLocalizationPlatform] that uses method channels.
class MethodChannelFlutterKurdishLocalization extends FlutterKurdishLocalizationPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_kurdish_localization');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
