import 'package:flutter/cupertino.dart';
import 'package:quiz_game/src/sign_up/sign_up.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}
