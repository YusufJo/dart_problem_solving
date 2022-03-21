import 'contact.dart';

abstract class MessagingApp {
  const MessagingApp({
    required this.name,
    required this.contacts,
  });

  final String name;
  final List<Contact> contacts;

  void message({required String number, required String content}) {
    print('Sending a new message via $name..\nto: $number\ncontent: $content.');
  }

  void addContact(Contact contact) {
    contacts.add(contact);
  }

  void removeContact(String name) {
    contacts.removeWhere((contact) => contact.name == name);
  }
}
