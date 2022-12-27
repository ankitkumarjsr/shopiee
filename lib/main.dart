import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopiee/view/screen/AuthScreen/auth_screen.dart';
import 'package:shopiee/view/screen/AuthScreen/sign_up_screen.dart';
import 'package:shopiee/view/screen/HomeScreen/home_screen.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProviderScope(child: shopiee()));
}

class shopiee extends StatelessWidget {
  const shopiee({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home:AuthScreen());
  }
}
