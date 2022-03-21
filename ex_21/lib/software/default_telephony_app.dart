import 'contact.dart';
import 'telephony_app.dart';

class DefaultTelephonyApp extends TelephonyApp {
  DefaultTelephonyApp({required String name, required List<Contact> contacts})
      : super(name: name, contacts: contacts);
}
