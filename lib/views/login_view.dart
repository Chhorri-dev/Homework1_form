import 'package:flutter/material.dart';
import 'package:stateless/views/forgot_password.dart';
import 'package:stateless/views/register_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Remove backgroundColor from Scaffold
      body: Container(
        // Set network image as background
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "data:image/jpeg;base64,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"), // <-- Replace with your image URL
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white
                    .withOpacity(0.85), // optional: make it semi-transparent
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
                  Text(
                    "Welcome Back!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.deepPurple),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Please login to your account",
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  SizedBox(height: 25),
                  // Email
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                  SizedBox(height: 15),
                  // Password
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                  SizedBox(height: 25),
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
                        "Login",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  // create account & reset password
                  Center(
                    child: Row(children: [
                      TextButton(
                        child: const Text("Create Account"),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (context) => const RegisterView(),
                              ));
                        },
                      ),
                      TextButton(
                        child: Text("Forgot Password"),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ForgotPasswordView(),
                              ));
                        },
                      )
                    ]),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
