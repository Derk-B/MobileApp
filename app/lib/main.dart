import 'package:app/features/landingpage/presentation/views/landingpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Color values
  final primaryColor = const Color.fromARGB(255, 16, 167, 16);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FoodDeliveryApp',
      theme: ThemeData(
          useMaterial3: true,
          // Colors
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.green,
            primary: primaryColor,
            onPrimary: Colors.white,
            secondary: const Color.fromARGB(155, 191, 191, 191),
            onSecondary: Colors.black,
          ),
          primaryColor: primaryColor,

          // Buttons
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(primaryColor),
                foregroundColor: const MaterialStatePropertyAll(Colors.white)),
          ),

          // Text
          textTheme: const TextTheme(
            headlineMedium: TextStyle(fontWeight: FontWeight.bold),
            headlineLarge: TextStyle(fontWeight: FontWeight.bold),
          )),
      home: const MyHomePage(title: 'NietThuisbezorgd.nl'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        return const LandingPage();
      },
    );
  }
}
