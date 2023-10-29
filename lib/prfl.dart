import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'main.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'nanai ',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
          backgroundColor: Colors.white10,
          title: Text('Profile'),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 25,
          )),
      body: Container(
        color: Colors.white10,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("images/assrofi.jpg"),
              ),
              const SizedBox(height: 20),
              itemProfile('NAME', 'FITRADA KURNIALDI',
                  CupertinoIcons.person_fill),
              const SizedBox(height: 10),
              itemProfile('NPM', '22676002', CupertinoIcons.phone_fill),
              const SizedBox(height: 10),
              itemProfile('CALL', '0857775758', CupertinoIcons.location_fill),
              const SizedBox(height: 10),
              itemProfile(
                  'EMAIL', 'assrofi.kurnia@gmail.com', CupertinoIcons.mail_solid),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                    ),
                    child: const Text('Back to Login')),
              )
            ],
          ),
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.black26,
                spreadRadius: 2,
                blurRadius: 10)
          ]
          ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: const Color.fromARGB(255, 255, 255, 255)),
        tileColor: const Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}
