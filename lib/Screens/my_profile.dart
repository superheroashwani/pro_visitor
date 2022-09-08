import 'package:flutter/material.dart';

class MyProfileActivity extends StatelessWidget {
  const MyProfileActivity({Key? key}) : super(key: key);

  get child => null;

  @override
  Widget build(BuildContext context) {
    // final screenweight = MediaQuery.of(context).size.width;
    // final screenheight = MediaQuery.of(context).size.height

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 24,
                  ),
                  const Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/hero.jpg'),
                      radius: 60.0,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Text(
                    '+91 0123456789',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Text(
                    'name@gmail.com',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(top: 30, bottom: 8),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        minimumSize: const Size(180, 40),
                        primary: Colors.yellow,
                        onPrimary: Colors.black,
                      ),
                      child: const Text(' Upgrade to PRO '),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    width: 280,
                    height: 50,
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.all(5),
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.privacy_tip),
                      label: Row(
                        children: const [
                          Center(child: Text("Privacy & Policy")),
                          Padding(
                            padding: EdgeInsets.only(left: 80),
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                        ],
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        minimumSize: const Size(280, 50),
                        primary: const Color.fromARGB(255, 230, 237, 240),
                        onPrimary: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    width: 280,
                    height: 50,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5),
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.people_alt),
                      label: Row(
                        children: const [
                          Center(child: Text("Employee")),
                          Padding(
                            padding: EdgeInsets.only(left: 120),
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                        ],
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        minimumSize: const Size(280, 40),
                        primary: const Color.fromARGB(255, 230, 237, 240),
                        onPrimary: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    width: 280,
                    height: 50,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5),
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.support_agent),
                      label: Row(
                        children: const [
                          Center(child: Text("Help & Support")),
                          Padding(
                            padding: EdgeInsets.only(left: 87),
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                        ],
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        minimumSize: const Size(280, 40),
                        primary: const Color.fromARGB(255, 230, 237, 240),
                        onPrimary: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    width: 280,
                    height: 50,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5),
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.contacts),
                      label: Row(
                        children: const [
                          Center(child: Text("Contact")),
                          Padding(
                            padding: EdgeInsets.only(left: 130),
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                        ],
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        minimumSize: const Size(280, 40),
                        primary: const Color.fromARGB(255, 230, 237, 240),
                        onPrimary: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    width: 280,
                    height: 50,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5),
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.share),
                      label: Row(
                        children: const [
                          Center(child: Text("Refer")),
                          Padding(
                            padding: EdgeInsets.only(left: 147),
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                        ],
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        minimumSize: const Size(280, 40),
                        primary: const Color.fromARGB(255, 230, 237, 240),
                        onPrimary: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    width: 280,
                    height: 50,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5),
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.question_answer),
                      label: Row(
                        children: const [
                          Center(child: Text("FAQs")),
                          Padding(
                            padding: EdgeInsets.only(left: 147),
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                        ],
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        minimumSize: const Size(280, 40),
                        primary: const Color.fromARGB(255, 230, 237, 240),
                        onPrimary: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    width: 280,
                    height: 50,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5),
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.logout),
                      label: Row(
                        children: const [
                          Center(child: Text("Log Out")),
                          Padding(
                            padding: EdgeInsets.only(left: 130.0),
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                        ],
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        minimumSize: const Size(280, 40),
                        primary: const Color.fromARGB(255, 230, 237, 240),
                        onPrimary: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
