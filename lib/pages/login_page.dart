import 'package:flutter/material.dart';
import 'package:kaltsitapp/components/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                const SizedBox(height: 50),
                //logo
                Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(height: 50),
                //welcome back message
                Text(
                  "Selamat datang kembali,",
                ),
                const SizedBox(height: 25), // Tambahkan koma di sini
                //email textfield
                MyTextField(
                  controller: emailTextController,
                  hintText: 'Email',
                  obscureText: false,
                ),
                //password textfield
                MyTextField(
                  controller: passwordTextController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                //sign in button

                //go to register page
              ],
            ),
          ),
        ),
      ),
    );
  }
}
