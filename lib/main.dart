import 'package:flutter/material.dart';
import 'views/login_view.dart';
import 'views/register_view.dart';

void main() => runApp(const MyForm());

class MyForm extends StatelessWidget {
  const MyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginView(),
    );
  }
}
