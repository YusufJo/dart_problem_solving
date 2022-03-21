import 'operating_system.dart';
import 'resolution.dart';
import '../software/default_messaging_app.dart';
import '../software/default_telephony_app.dart';

import 'mobile.dart';

class SamsungMobile extends Mobile {
  SamsungMobile({
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
                DefaultTelephonyApp(name: 'Samsung Phone', contacts: []),
            messagingApp:
                DefaultMessagingApp(name: 'Samsung Messages', contacts: []));
}
