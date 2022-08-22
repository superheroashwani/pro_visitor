import 'package:flutter/material.dart';

class MyProfileActivity extends StatelessWidget {
  const MyProfileActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  SizedBox(
                    height: 24,
                  ),
/*                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'PROFILE',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  */
                  Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/hero.jpg'),
                      radius: 60.0,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    '+91 0123456789',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    'name@gmail.com',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
/*                  ElevatedButton(
                    style: ElevatedButton.styleForm(elevation:2),
                    onPressed: () {},
                    child: Text(" Edit "),
                  ),
                  */
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
