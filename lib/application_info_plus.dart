import 'application_info_plus_platform_interface.dart';

class ApplicationInfoPlus {
  Future<String?> getPlatformVersion() {
    return ApplicationInfoPlusPlatform.instance.getPlatformVersion();
  }

  Future<String?> getApplicationBackupFlag() {
    return ApplicationInfoPlusPlatform.instance.getApplicationBackupFlag();
  }
}
