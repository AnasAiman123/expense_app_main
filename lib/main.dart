import 'package:expense_app/screens/login_screen.dart';
import 'package:expense_app/screens/profile_screen.dart';
import 'package:expense_app/screens/signup_screen.dart';
import 'package:expense_app/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './models/database_provider.dart';
// screens
import './screens/category_screen.dart';
import './screens/expense_screen.dart';
import './screens/all_expenses.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => DatabaseProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Splash.name,
      routes: {
        Splash.name: (_) => const Splash(),
        CategoryScreen.name: (_) => const CategoryScreen(),
        ExpenseScreen.name: (_) => const ExpenseScreen(),
        AllExpenses.name: (_) => const AllExpenses(),
        LoginScreen.name: (_) => const LoginScreen(),
        SignupScreen.name: (_) => const SignupScreen(),
        ProfileScreen.name: (_) => const ProfileScreen(),
      },
    );
  }
}
