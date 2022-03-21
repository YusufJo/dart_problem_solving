import 'package:ex_1/shops/vendor.dart';

import '../hardware/apple_mobile.dart';
import '../hardware/resolution.dart';
import 'mobile_shop.dart';

class AppleShop extends MobileShop {
  AppleShop() : super(vendor: Vendor.apple);

  @override
  List<AppleMobile> get allMobiles => [
        AppleMobile(
            name: 'Apple iPhone 13 Pro Max',
            modelNumber: 'A2643',
            resolution: const Resolution(width: 1284, height: 2778),
            batteryCapacity: 4352),
        AppleMobile(
            name: 'Apple iPhone 13 Pro',
            modelNumber: 'A2638',
            resolution: const Resolution(width: 1170, height: 2532),
            batteryCapacity: 3095),
        AppleMobile(
            name: 'Apple iPhone 13',
            modelNumber: 'A2633',
            resolution: const Resolution(width: 1170, height: 2532),
            batteryCapacity: 3240),
      ];
}
