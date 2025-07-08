import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_kurdish_localization_method_channel.dart';

abstract class FlutterKurdishLocalizationPlatform extends PlatformInterface {
  /// Constructs a FlutterKurdishLocalizationPlatform.
  FlutterKurdishLocalizationPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterKurdishLocalizationPlatform _instance = MethodChannelFlutterKurdishLocalization();

  /// The default instance of [FlutterKurdishLocalizationPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterKurdishLocalization].
  static FlutterKurdishLocalizationPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterKurdishLocalizationPlatform] when
  /// they register themselves.
  static set instance(FlutterKurdishLocalizationPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
