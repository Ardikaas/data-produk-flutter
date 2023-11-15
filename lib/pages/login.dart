import 'package:flutter/material.dart';
import 'package:i_list/components/formfield.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final username = TextEditingController();
  final pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Text(
              'Welcome back!!',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
                ),
            ),
            const SizedBox(height: 25),
            MyFormField(
              controller: username,
              text: 'Usernanme or Email',
              obscureText: false,
            ),
            const SizedBox(height: 10),
            MyFormField(
              controller: pass,
              text: 'Password',
              obscureText: true,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/list');
            }, 
            child: Container(
              padding: const EdgeInsets.all(25),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}