import 'package:flutter/material.dart';
import 'package:hrm_frontend/features/auth/forgetpass.dart';
import 'package:hrm_frontend/features/auth/login.dart';
import 'package:hrm_frontend/providers/auth/loginprovider.dart';
import 'package:hrm_frontend/providers/auth/signupprovider.dart';
import 'package:provider/provider.dart';
import 'package:hrm_frontend/features/auth/signup.dart';
import 'package:hrm_frontend/home.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SignUpProvider()),
        ChangeNotifierProvider(create: (_) => LoginProvider()),
        // Add other providers here if needed
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // Optional: remove debug banner
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ForgotPassword(),
    );
  }
}
