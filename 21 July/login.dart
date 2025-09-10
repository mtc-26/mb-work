

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_first_app/pages/regster.dart';
import 'package:my_first_app/pages/showtrip.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String text = '';
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  // child: Image.network(
                  //   'https://m.media-amazon.com/images/I/51tKIR7GWYL.jpg',
                  child: Image.asset('assets/images/c1.jpg', width: 500),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("หมายเลขโทรศัพท์", style: TextStyle(fontSize: 16)),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("รหัสผ่าน", style: TextStyle(fontSize: 16)),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextButton(
                        onPressed: register,
                        child: const Text('ลงทะเบียนใหม่'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: FilledButton(
                        onPressed: login,
                        child: const Text('เข้าสู่ระบบ'),
                      ),
                    ),
                  ],
                ),
                Text(text, style: const TextStyle(fontSize: 20)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void register() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterPage()),
    );
  }

  void login() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ShowTripPage()),
    );
  }
}
