import 'package:ex_1/shops/vendor.dart';

import '../hardware/mobile.dart';

abstract class MobileShop {
  const MobileShop({required this.vendor});

  final Vendor vendor;

  List<Mobile> get allMobiles;

  Mobile buyMobile(String modelNumber) {
    return allMobiles
        .firstWhere((element) => element.modelNumber == modelNumber);
  }
}
