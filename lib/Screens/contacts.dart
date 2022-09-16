import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

class MyContactActivity extends StatefulWidget {
  const MyContactActivity({Key? key}) : super(key: key);

  @override
  State<MyContactActivity> createState() => _MyContactActivityState();
}

class _MyContactActivityState extends State<MyContactActivity> {
  @override
  Widget build(BuildContext context) {
    return const MyContactPage();
  }
}

class MyContactPage extends StatefulWidget {
  const MyContactPage({Key? key}) : super(key: key);

  @override
  State<MyContactPage> createState() => _MyContactPageState();
}

class _MyContactPageState extends State<MyContactPage> {
  List<Contact> contacts = [];
  List<Contact> contactsFiltered = [];

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    getAllContacts();
    searchController.addListener(() {
      filterContacts();
    });
  }

  String flattenPhoneNumber(String phoneStr) {
    return phoneStr.replaceAllMapped(RegExp(r'^(\+)|\D'), (Match m) {
      return m[0] == "+" ? "+" : "";
    });
  }

  getAllContacts() async {
    List<Contact> contacts =
        (await ContactsService.getContacts(withThumbnails: false)).toList();
    setState(() {
      contacts = contacts;
    });
  }

  filterContacts() {
    List<Contact> contacts = [];
    contacts.addAll(contacts);
    if (searchController.text.isNotEmpty) {
      contacts.retainWhere((contact) {
        String searchTerm = searchController.text.toLowerCase();
        String searchTermFlatten = flattenPhoneNumber(searchTerm);
        String contactName = contact.displayName!.toLowerCase();
        bool nameMatches = contactName.contains(searchTerm);
        if (nameMatches == true) {
          return true;
        }

        if (searchTermFlatten.isEmpty) {
          return false;
        }

        var phone = contact.phones?.firstWhere((phn) {
          String phnFlattend = flattenPhoneNumber(phn.value!);
          return phnFlattend.contains(searchTermFlatten);
        }, orElse: () => null!);
        return phone != null;
      });

      setState(() {
        contactsFiltered = contacts;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isSearching = searchController.text.isNotEmpty;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              controller: searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor),
                ),
                prefixIcon:
                    Icon(Icons.search, color: Theme.of(context).primaryColor),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: isSearching == true
                    ? contactsFiltered.length
                    : contacts.length,
                itemBuilder: (context, index) {
                  Contact contact = isSearching == true
                      ? contactsFiltered[index]
                      : contacts[index];
                  return ListTile(
                    title: Text(contact.displayName!),
                    subtitle: Text(contact.phones!.elementAt(0).value!),
                    leading:
                        (contact.avatar != null && (contact.avatar)!.isNotEmpty)
                            ? CircleAvatar(
                                backgroundImage: MemoryImage(contact.avatar!),
                              )
                            : CircleAvatar(
                                child: Text(
                                  contact.initials(),
                                ),
                              ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
