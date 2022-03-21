import 'contact.dart';
import 'telephony_app.dart';

class GoogleTelephonyApp extends TelephonyApp {
  const GoogleTelephonyApp({required List<Contact> contacts})
      : super(name: 'Phone by Google', contacts: contacts);
}
