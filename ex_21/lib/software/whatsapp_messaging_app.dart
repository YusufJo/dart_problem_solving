import 'contact.dart';
import 'messaging_app.dart';

class WhatsappMessagingApp extends MessagingApp {
  const WhatsappMessagingApp({required List<Contact> contacts})
      : super(name: 'Whatsapp', contacts: contacts);
}
