import 'dart:io';
import 'package:ex_1/hardware/mobile.dart';
import 'package:ex_1/shops/mobile_shop.dart';
import 'package:ex_1/shops/shop_locator.dart';
import 'package:ex_1/shops/vendor.dart';
import 'package:ex_1/software/contact.dart';
import 'package:ex_1/software/google_telephony_app.dart';
import 'package:ex_1/software/telephony_app.dart';
import 'package:ex_1/software/true_caller_telephony_app.dart';

void main(List<String> arguments) {
  print('Welcome to the ultimate mobile simulation');
  final vendor = _promptForVendor;
  final shop = ShopLocator.locateShop(vendor);
  final requestedToViewMobiles = _promptToShowAllMobiles(shop);
  _endSimulation(requestedToViewMobiles == false);
  final requestedToBuyMobile =
      _promptYesOrNo(initialMessage: 'Would you like to buy a mobile? (y/n):');
  _endSimulation(requestedToBuyMobile == false);
  final mobile = _promptToBuyAMobile(shop);
  _reportBoughtMobile(mobile);
  final requestedToUseMobile = _promptToUseMobilePreference(mobile);
  _endSimulation(requestedToUseMobile == false);
  _promptToUseMobile(mobile);
}

Vendor get _promptForVendor {
  String input;
  List<String> vendorNames = Vendor.values.map((e) => e.name).toList();
  do {
    print('We deal with multiple vendors such as: $vendorNames');
    print('Which vendor do you prefer? ');
    input = stdin.readLineSync() ?? '';
    if (input.isNotEmpty) {
      if (vendorNames.contains(input)) {
        switch (input) {
          case 'samsung':
            return Vendor.samsung;
          case 'apple':
            return Vendor.apple;
          case 'nokia':
            return Vendor.nokia;
        }
      } else {
        print('We don\'t deal with this vendor. Please try again.');
        continue;
      }
    } else {
      print('You have to type a vendor name. Please try again.');
    }
  } while (true);
}

bool _promptToShowAllMobiles(MobileShop shop) {
  String input;
  do {
    print('You chose the ${shop.vendor.name} shop.');
    print('Would you like to view all of ${shop.vendor.name}\'s '
        'available mobile phones? (y/n): ');
    input = stdin.readLineSync() ?? '';
    if (input.isNotEmpty) {
      if (input.toLowerCase() == 'y' || input.toLowerCase() == 'n') {
        if (input.toLowerCase() == 'y') {
          print('===================================');
          print(
              shop.allMobiles.map((mobile) => mobile.toString()).join('\n\n'));
          print('===================================');
          return true;
        } else {
          return false;
        }
      } else {
        print('Only \'y\' or \'n\' are allowed. Please try again.');
        continue;
      }
    } else {
      print('Wrong entry, please try again.');
    }
  } while (true);
}

Mobile _promptToBuyAMobile(MobileShop shop) {
  final allModelNumbers =
      shop.allMobiles.map((e) => e.modelNumber.toLowerCase()).toList();
  final exampleModelNumber = allModelNumbers.first.toUpperCase();
  String input;
  do {
    print('Enter the model number: \'i.e. $exampleModelNumber\': ');
    input = stdin.readLineSync() ?? '';
    if (input.isNotEmpty) {
      if (allModelNumbers.contains(input.toLowerCase())) {
        return shop.buyMobile(input);
      } else {
        print('Model number is not found. Please try again.');
        continue;
      }
    } else {
      print('Model number cannot be empty. Please try again.');
    }
  } while (true);
}

void _reportBoughtMobile(Mobile mobile) {
  print('Congrats! You bought a new ${mobile.name}');
}

bool _promptToUseMobilePreference(Mobile mobile) {
  String input;
  do {
    print('Would you like to use your new mobile? (y/n): ');
    input = stdin.readLineSync() ?? '';
    if (input.isNotEmpty) {
      if (input.toLowerCase() == 'y' || input.toLowerCase() == 'n') {
        return input.toLowerCase() == 'y';
      } else {
        print('Only \'y\' or \'n\' are allowed. Please try again.');
        continue;
      }
    } else {
      print('Wrong entry. Please try again.');
    }
  } while (true);
}

void _promptToUseMobile(Mobile mobile) {
  String input;
  do {
    print('Enter one of the following commands: ');
    print('\'a\' to add contact to mobile.');
    print('\'at\' to add contact to the telephony app.');
    print('\'am\' to add contact to the messaging app.');
    print('\'r\' to remove contact from mobile');
    print('\'rt\' to remove contact from the telephony app');
    print('\'rm\' to remove contact from the messaging app');
    print('\'c\' to call a number or contact');
    print('\'m\' to message a number or contact');
    print('\'ct\' to change telephony app');
    print('\'cm\' to change messaging app');
    print('\'exit\' to exit simulation');
    print('Your input: ');
    input = stdin.readLineSync() ?? '';
    input = input.toLowerCase();
    if (input.isNotEmpty) {
      if (input == 'a') {
        mobile.addContact(_promptToAddContact);
      } else if (input == 'at') {
        mobile.telephonyApp.addContact(_promptToAddContact);
      } else if (input == 'am') {
        mobile.messagingApp.addContact(_promptToAddContact);
      } else if (input == 'r') {
        mobile.removeContact(
            _promptForString(initialMessage: 'Enter contact name:'));
      } else if (input == 'rt') {
        mobile.telephonyApp.removeContact(
            _promptForString(initialMessage: 'Enter contact name:'));
      } else if (input == 'rm') {
        mobile.messagingApp.removeContact(
            _promptForString(initialMessage: 'Enter contact name:'));
      } else if (input == 'c') {
        mobile.call(
            _promptForString(initialMessage: 'Enter contact number or name:'));
      } else if (input == 'm') {
        mobile.message(
            number: _promptForString(
                initialMessage: 'Enter contact number or name:'),
            content:
                _promptForString(initialMessage: 'Enter message content:'));
      } else if (input == 'ct') {
        mobile.setTelephonyApp(_promptToChangeTelephonyApp(mobile));
      } else if (input == 'cm') {
        print('Feature not implemented yet.');
      } else if (input == 'exit') {
        _endSimulation(true);
      } else {
        print('Unknown command. please try again.');
      }
    } else {
      print('Your input cannot be empty. Please try again');
    }
  } while (true);
}

Contact get _promptToAddContact {
  final name = _promptForString(initialMessage: 'Enter contact name: ');
  final number = _promptForString(initialMessage: 'Enter phone number: ');
  final hasEmail =
      _promptYesOrNo(initialMessage: 'Do you want to add an email? ');
  if (hasEmail) {
    final email = _promptForString(initialMessage: 'Enter contact email: ');
    return Contact(name: name, number: number, email: email);
  } else {
    return Contact(name: name, number: number);
  }
}

TelephonyApp _promptToChangeTelephonyApp(Mobile mobile) {
  String input = '';
  while (input.isEmpty ||
      input != 'truecaller' ||
      input != 'google' ||
      input != 'default') {
    print('Enter one of the following commands: ');
    print('\'truecaller\' to chose TrueCaller.');
    print('\'google\' to chose Phone by Google.');
    print('\'default\' to chose default app');
    input = _promptForString(initialMessage: 'Enter the app\'s name:')
        .toLowerCase();
  }
  final importMobileContacts = _promptYesOrNo(
      initialMessage:
          'Do you want to import contacts from mobile to Telephony app');

  switch (input) {
    case 'truecaller':
      return TrueCallerTelephonyApp(
          contacts: importMobileContacts ? mobile.contacts : []);
    case 'google':
      return GoogleTelephonyApp(
          contacts: importMobileContacts ? mobile.contacts : []);
    case 'default':
      return mobile.defaultTelephonyApp;
    default:
      throw Exception('Unsupported telephony app');
  }
}

String _promptForString(
    {required String initialMessage,
    String emptyInputMessage = 'Input cannot '
        'be empty. Please try again.'}) {
  String input;
  do {
    print(initialMessage);
    input = stdin.readLineSync() ?? '';
    if (input.isNotEmpty) {
      return input;
    } else {
      print(emptyInputMessage);
    }
  } while (true);
}

bool _promptYesOrNo(
    {required String initialMessage,
    String emptyInputMessage = 'Input cannot '
        'be empty. Please try again.'}) {
  String input;
  do {
    print(initialMessage);
    input = stdin.readLineSync() ?? '';
    if (input.isNotEmpty) {
      if (input.toLowerCase() == 'y' || input.toLowerCase() == 'n') {
        return input.toLowerCase() == 'y';
      } else {
        print('Only \'y\' or \'n\' are allowed. Please try again.');
        continue;
      }
    } else {
      print(emptyInputMessage);
    }
  } while (true);
}

void _endSimulation(bool end) {
  if (end) {
    print('Bye!');
    exit(0);
  }
}
