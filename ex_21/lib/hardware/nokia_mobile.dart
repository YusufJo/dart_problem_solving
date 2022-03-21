import 'package:ex_1/hardware/mobile.dart';
import 'package:ex_1/hardware/operating_system.dart';
import 'package:ex_1/hardware/resolution.dart';
import 'package:ex_1/software/default_messaging_app.dart';
import 'package:ex_1/software/default_telephony_app.dart';

class NokiaMobile extends Mobile {
  NokiaMobile({
    required String name,
    required String modelNumber,
    required Resolution resolution,
    required int batteryCapacity,
  }) : super(
            name: name,
            modelNumber: modelNumber,
            resolution: resolution,
            batteryCapacity: batteryCapacity,
            operatingSystem: OperatingSystem.android,
            telephonyApp:
                DefaultTelephonyApp(name: 'Nokia Phone', contacts: []),
            messagingApp:
                DefaultMessagingApp(name: 'Nokia Messages', contacts: []));
}
