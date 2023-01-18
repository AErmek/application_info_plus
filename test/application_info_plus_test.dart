// import 'package:flutter_test/flutter_test.dart';
// import 'package:application_info_plus/application_info_plus.dart';
// import 'package:application_info_plus/application_info_plus_platform_interface.dart';
// import 'package:application_info_plus/application_info_plus_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// class MockApplicationInfoPlusPlatform
//     with MockPlatformInterfaceMixin
//     implements ApplicationInfoPlusPlatform {

//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }

// void main() {
//   final ApplicationInfoPlusPlatform initialPlatform = ApplicationInfoPlusPlatform.instance;

//   test('$MethodChannelApplicationInfoPlus is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelApplicationInfoPlus>());
//   });

//   test('getPlatformVersion', () async {
//     ApplicationInfoPlus applicationInfoPlusPlugin = ApplicationInfoPlus();
//     MockApplicationInfoPlusPlatform fakePlatform = MockApplicationInfoPlusPlatform();
//     ApplicationInfoPlusPlatform.instance = fakePlatform;

//     expect(await applicationInfoPlusPlugin.getPlatformVersion(), '42');
//   });
// }
