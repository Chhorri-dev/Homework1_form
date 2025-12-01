import 'dart:html';

import 'package:flutter/material.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Back")),
      body: Center(
          child: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Container(
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, blurRadius: 12, spreadRadius: 3)
              ]),
          child: Column(children: [
            Center(
              child: Icon(
                Icons.lock,
                size: 60,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Please enter your email. We will sent verify code to your email",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email)),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotPasswordViewTwo(),
                      ));
                },
                child: Text(
                  "Sent Code",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ]),
        ),
      )),
    );
  }
}

class ForgotPasswordViewTwo extends StatelessWidget {
  const ForgotPasswordViewTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Back")),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, blurRadius: 12, spreadRadius: 3)
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Icon(
                    Icons.lock,
                    size: 60,
                    color: Colors.deepPurple,
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Please reset your password",
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
                SizedBox(
                  height: 25,
                ),
                // Email
                TextField(
                  decoration: InputDecoration(
                    labelText: "New Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                // Password
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                // Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Reset Password",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                // create account & reset password
              ],
            ),
          ),
        ),
      ),
    );
  }
}
