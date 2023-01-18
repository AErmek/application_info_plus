import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'application_info_plus_platform_interface.dart';

/// An implementation of [ApplicationInfoPlusPlatform] that uses method channels.
class MethodChannelApplicationInfoPlus extends ApplicationInfoPlusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('application_info_plus');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> getApplicationBackupFlag() async {
    final version =
        await methodChannel.invokeMethod<String>('getApplicationBackupFlag');
    return version;
  }
}
