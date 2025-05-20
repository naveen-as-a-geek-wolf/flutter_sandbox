import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  final String name;
  static const String routeName = "profile_screen";
  const ProfileScreen({super.key,required this.name});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(widget.name),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                child: Text(
                  "home",
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(color: Colors.blue),
              ),
            
            )
          ],
        ),
      ),
    );
  }
}
