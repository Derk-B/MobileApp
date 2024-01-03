import 'package:app/features/landingpage/presentation/views/landingpage.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:app/l10n/firebase_ui_labels_localized.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_localizations/firebase_ui_localizations.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();

  static _AppState of(BuildContext context) =>
      context.findAncestorStateOfType<_AppState>()!;
}

class _AppState extends State<App> {
  // Color values
  final primaryColor = const Color.fromARGB(255, 16, 167, 16);

  Locale _locale = const Locale("nl");

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

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
      localizationsDelegates: [
        FirebaseUILocalizations.withDefaultOverrides(
            FirebaseUILabelsLocalized(_locale)),
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("en"),
        Locale("nl"),
      ],
      locale: _locale,
      home: const AuthWrapper(),
    );
  }
}

class AuthWrapper extends StatefulWidget {
  const AuthWrapper({super.key});

  @override
  State<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
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
