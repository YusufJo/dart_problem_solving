import 'contact.dart';

abstract class TelephonyApp {
  const TelephonyApp({
    required this.name,
    required this.contacts,
  });

  final String name;
  final List<Contact> contacts;

  void call(String number) {
    print('Calling $number on $name');
  }

  void addContact(Contact contact) {
    contacts.add(contact);
  }

  void removeContact(String name) {
    contacts.removeWhere((contact) => contact.name == name);
  }
}
