import '../hardware/resolution.dart';
import 'vendor.dart';
import '../hardware/samsung_mobile.dart';
import 'mobile_shop.dart';

class SamsungShop extends MobileShop {
  SamsungShop() : super(vendor: Vendor.samsung);

  @override
  List<SamsungMobile> get allMobiles => [
        SamsungMobile(
            name: 'Samsung Galaxy S22 Ultra 5G',
            modelNumber: 'SM-S908B',
            resolution: Resolution(width: 1440, height: 3088),
            batteryCapacity: 5000),
        SamsungMobile(
            name: 'Samsung Galaxy S22+ 5G',
            modelNumber: 'SM-S906B',
            resolution: Resolution(width: 1080, height: 2340),
            batteryCapacity: 4500),
        SamsungMobile(
            name: 'Samsung Galaxy S21 FE 5G',
            modelNumber: 'SM-G990B',
            resolution: Resolution(width: 1080, height: 2400),
            batteryCapacity: 4500),
      ];
}
