// import 'package:flutter/material.dart';
// import 'package:flashchat/screens/welcome_screen.dart';
// import 'package:flashchat/screens/login_screen.dart';
// import 'package:flashchat/screens/registration_screen.dart';
// import 'package:flashchat/screens/chat_screen.dart';
//
// void main() => runApp(FlashChat());
//
// class FlashChat extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData.dark().copyWith(
//         textTheme: TextTheme(
//           bodyText1: TextStyle(color: Colors.black54),
//         ),
//       ),
//       home: WelcomeScreen(),
//       initialRoute: WelcomeScreen.id,
//       routes: {
//         WelcomeScreen.id: (context) => const WelcomeScreen(),
//         '/login': (context) => const LoginScreen(),
//         '/register': (context) => const RegistrationScreen(),
//         '/chat': (context) => const ChatScreen(),
//       },
//     );
//   }
// }

import 'package:flashchat/screens/chat_screen.dart';
import 'package:flashchat/screens/login_screen.dart';
import 'package:flashchat/screens/registration_screen.dart';
import 'package:flashchat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  const FlashChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
        ChatScreen.id: (context) => const ChatScreen(),
      },
    );
  }
}
