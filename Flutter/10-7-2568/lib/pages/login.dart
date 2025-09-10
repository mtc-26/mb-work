import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Pages')),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          color: Colors.amber,
          child: Column(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: Container(color: Colors.blue),
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: Container(color: Colors.red),
              ),
            ],
          ),
          child: Row(
            children: [
              SizedBox(
                width: 200,
                height: 100,
                child: Container(color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
