import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quiz_game/src/fogot_password/forgot_password.dart';

class SignUp extends StatelessWidget {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _repassController = TextEditingController();

  SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        resizeToAvoidBottomInset: false,
        navigationBar: const CupertinoNavigationBar(
          middle: Text(
            'Sign up',
            style: TextStyle(
                fontSize: 30,
                color: CupertinoColors.white,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: CupertinoColors.activeOrange,
        ),
        backgroundColor: CupertinoColors.activeOrange,
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 50),
                padding: EdgeInsets.only(top: 30, right: 30, left: 30),
                width: 370,
                height: 500,
                decoration: BoxDecoration(
                    border: Border.all(color: CupertinoColors.black, width: 0),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: CupertinoColors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset.fromDirection(7.85, 30.0),
                          blurRadius: 5,
                          color: Color.fromRGBO(255, 255, 255, 0.5)),
                      BoxShadow(
                          offset: Offset.fromDirection(7.85, 17.0),
                          blurRadius: 3,
                          color: Color.fromRGBO(255, 255, 255, 0.7)),
                    ]),
                child: Column(children: [
                  CupertinoTextField(
                    controller: _usernameController,
                    decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              style: BorderStyle.solid,
                              color: CupertinoColors.systemGrey)),
                    ),
                    maxLength: 30,
                    placeholder: 'User Name',
                  ),
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  CupertinoTextField(
                    controller: _emailController,
                    decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              style: BorderStyle.solid,
                              color: CupertinoColors.systemGrey)),
                    ),
                    maxLength: 30,
                    padding: EdgeInsets.all(10),
                    placeholder: 'Email',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  CupertinoTextField(
                    controller: _passController,
                    decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              style: BorderStyle.solid,
                              color: CupertinoColors.systemGrey)),
                    ),
                    maxLength: 30,
                    padding: EdgeInsets.all(10),
                    placeholder: 'Password',
                    obscuringCharacter: '*',
                    obscureText: true,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  CupertinoTextField(
                    controller: _repassController,
                    decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              style: BorderStyle.solid,
                              color: CupertinoColors.systemGrey)),
                    ),
                    maxLength: 30,
                    padding: EdgeInsets.all(10),
                    placeholder: 'Retype Password',
                    obscuringCharacter: '*',
                    obscureText: true,
                  ),
                  Padding(padding: EdgeInsets.only(top: 30)),
                  SizedBox(
                    width: 400,
                    height: 60,
                    child: CupertinoButton(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: CupertinoColors.activeOrange,
                        onPressed: () {
                          _usernameController.text = '';
                        },
                        child: const Text(
                          'Summit',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        )),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  Text.rich(TextSpan(
                      text: 'Already have an account? ',
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Sign in',
                            style: TextStyle(
                                color: CupertinoColors.activeOrange,
                                fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgotPassword()),
                                );
                              }),
                      ]))
                ]),
              ),
            )
          ],
        ));
  }
}
