import 'contact.dart';
import 'messaging_app.dart';

class IMessageMessagingApp extends MessagingApp {
  const IMessageMessagingApp({required List<Contact> contacts})
      : super(name: 'IMessage', contacts: contacts);
}
