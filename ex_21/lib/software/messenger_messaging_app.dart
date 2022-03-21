import 'package:ex_1/software/contact.dart';

import 'messaging_app.dart';

class MessengerMessagingApp extends MessagingApp {
  const MessengerMessagingApp({required List<Contact> contacts})
      : super(name: 'Messenger', contacts: contacts);
}
