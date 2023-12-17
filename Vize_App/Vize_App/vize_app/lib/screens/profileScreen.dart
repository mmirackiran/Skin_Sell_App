import 'package:flutter/material.dart';
import '../widgets/profileItem.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            ProfileItem(
              avatar: 'assets/images/avatar.jpeg',
              name: "DeagleMan",
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              width: double.infinity,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(36, 49, 49, 49),
              ),
              child: Column(
                children: [
                  Text("Nickname: DeagleMan",
                      style: TextStyle(color: Colors.black)),
                  Text("Username: Muhammed Miraç Kıran",
                      style: TextStyle(color: Colors.black)),
                  Text("E-Mail: m.mirac.kiran@live.com",
                      style: TextStyle(color: Colors.black)),
                  Text("Phone Number: 0532 457 78 68",
                      style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                if (Navigator.canPop(context)) ;
                Navigator.pop(context);
              },
              child: Text("Go Back",
                  style: TextStyle(fontSize: 15, color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
