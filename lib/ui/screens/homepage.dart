import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:password/ui/screens/pasword_screen.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          width: double.infinity,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) => const PasswordScreen(),
                ),
              );
            },
            child: Text("Set Password"),
          ),
        ),
      ),
    );
  }
}
