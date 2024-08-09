import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password/bloc/password_bloc.dart';
import 'package:password/ui/screens/homepage.dart';
import 'package:password/ui/screens/pasword_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final bool isPasswordEnabled = prefs.getBool('isPasswordEnabled') ?? false;
  
  runApp(MainApp(isPasswordEnabled: isPasswordEnabled));
}

class MainApp extends StatelessWidget {
  final bool isPasswordEnabled;

  const MainApp({super.key, required this.isPasswordEnabled});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PasswordBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: isPasswordEnabled ? const PasswordScreen() : const Homepage(),
      ),
    );
  }
}
