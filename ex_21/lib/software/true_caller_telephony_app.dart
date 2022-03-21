import 'contact.dart';
import 'telephony_app.dart';

class TrueCallerTelephonyApp extends TelephonyApp {
  const TrueCallerTelephonyApp({required List<Contact> contacts})
      : super(name: 'TrueCaller', contacts: contacts);
}
