import 'dart:isolate';
import 'package:test_project/models/system_info_model.dart';

Future<Map<String, dynamic>>? getDeviceSystemInfo() async {
  final isolate = await Isolate.run(_readData);
  return isolate;
}

Future<Map<String, dynamic>> _readData() async {
  await Future.delayed(const Duration(seconds: 2));
  return SystemInfo().getSystemInfo();
}
