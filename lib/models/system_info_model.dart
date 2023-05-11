import 'package:system_info2/system_info2.dart';

class SystemInfo {
  final cores = SysInfo.cores;

  Map<String, dynamic> getSystemInfo() {
    return <String, dynamic>{
      'Kernel architecture': SysInfo.kernelArchitecture,
      'Kernel bitness': SysInfo.kernelBitness,
      'Kernel name': SysInfo.kernelName,
      'Kernel version': SysInfo.kernelVersion,
      'Operating system name': SysInfo.operatingSystemName,
      'Operating system version': SysInfo.operatingSystemVersion,
      'Number of core': cores.length,
      'Core architecture': cores.first.architecture,
      'Core name': cores.first.name,
      'Total physical memory': SysInfo.getTotalPhysicalMemory().toString(),
      'AVX availability': SysInfo.kernelArchitecture == ProcessorArchitecture.x86_64 ||
              SysInfo.kernelArchitecture == ProcessorArchitecture.x86
          ? 'AVX available'
          : 'AVX not available'
    };
  }
}
