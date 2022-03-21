import 'package:ex_1/shops/vendor.dart';

import '../hardware/resolution.dart';
import '../hardware/nokia_mobile.dart';
import 'mobile_shop.dart';

class NokiaShop extends MobileShop {
  NokiaShop() : super(vendor: Vendor.nokia);

  @override
  List<NokiaMobile> get allMobiles => [
        NokiaMobile(
          name: 'Nokia G11',
          modelNumber: 'TA-1401',
          resolution: const Resolution(width: 720, height: 1600),
          batteryCapacity: 5050,
        ),
        NokiaMobile(
          name: 'Nokia X10',
          modelNumber: 'TA-1350',
          resolution: const Resolution(width: 1080, height: 2400),
          batteryCapacity: 4470,
        ),
        NokiaMobile(
          name: 'Nokia G50',
          modelNumber: 'TA-1358',
          resolution: const Resolution(width: 720, height: 1560),
          batteryCapacity: 5000,
        ),
      ];
}
