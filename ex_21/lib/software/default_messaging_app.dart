import 'contact.dart';
import 'messaging_app.dart';

class DefaultMessagingApp extends MessagingApp {
  const DefaultMessagingApp(
      {required String name, required List<Contact> contacts})
      : super(name: name, contacts: contacts);
}
