import 'package:ex_1/software/contact.dart';

import '../software/messaging_app.dart';
import 'operating_system.dart';
import 'resolution.dart';
import '../software/telephony_app.dart';

abstract class Mobile {
  Mobile({
    required this.name,
    required this.modelNumber,
    required this.resolution,
    required this.batteryCapacity,
    required this.operatingSystem,
    required TelephonyApp telephonyApp,
    required MessagingApp messagingApp,
  })  : defaultTelephonyApp = telephonyApp,
        defaultMessagingApp = messagingApp,
        _telephonyApp = telephonyApp,
        _messagingApp = messagingApp,
        contacts = [];

  final String name;
  final String modelNumber;
  final Resolution resolution;
  final int batteryCapacity;
  final OperatingSystem operatingSystem;
  final List<Contact> contacts;
  final TelephonyApp defaultTelephonyApp;
  final MessagingApp defaultMessagingApp;
  TelephonyApp _telephonyApp;
  MessagingApp _messagingApp;

  TelephonyApp get telephonyApp => _telephonyApp;

  MessagingApp get messagingApp => _messagingApp;

  void addContact(Contact contact) {
    contacts.add(contact);
  }

  void removeContact(String name) {
    contacts.removeWhere((contact) => contact.name == name);
  }

  void call(String number) {
    _telephonyApp.call(number);
  }

  void message({required String number, required String content}) {
    _messagingApp.message(number: number, content: content);
  }

  void setTelephonyApp(TelephonyApp telephonyApp) {
    _telephonyApp = telephonyApp;
  }

  void setMessagingApp(MessagingApp messagingApp) {
    _messagingApp = messagingApp;
  }

  @override
  String toString() {
    return 'Name: $name\nModelNumber: $modelNumber\nResolution: $resolution'
        '\nBattery Capacity: $batteryCapacity\nOperatingSystem: ${operatingSystem.name}';
  }
}
