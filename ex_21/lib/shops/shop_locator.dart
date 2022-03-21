import 'package:ex_1/shops/apple_shop.dart';
import 'package:ex_1/shops/mobile_shop.dart';
import 'package:ex_1/shops/samsung_shop.dart';
import 'package:ex_1/shops/vendor.dart';

import 'nokia_shop.dart';

abstract class ShopLocator {
  static MobileShop locateShop(Vendor vendor) {
    switch (vendor) {
      case Vendor.apple:
        return AppleShop();
      case Vendor.samsung:
        return SamsungShop();
      case Vendor.nokia:
        return NokiaShop();
    }
  }
}
