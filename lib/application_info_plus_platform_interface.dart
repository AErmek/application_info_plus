import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'application_info_plus_method_channel.dart';

abstract class ApplicationInfoPlusPlatform extends PlatformInterface {
  /// Constructs a ApplicationInfoPlusPlatform.
  ApplicationInfoPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static ApplicationInfoPlusPlatform _instance =
      MethodChannelApplicationInfoPlus();

  /// The default instance of [ApplicationInfoPlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelApplicationInfoPlus].
  static ApplicationInfoPlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ApplicationInfoPlusPlatform] when
  /// they register themselves.
  static set instance(ApplicationInfoPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getApplicationBackupFlag() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
