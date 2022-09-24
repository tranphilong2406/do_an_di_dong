import 'package:flutter/cupertino.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: CupertinoColors.activeOrange,
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.all(50)),
          const Center(
            child: Text(
              "Forgot Password",
              style: TextStyle(
                fontFamily: '',
                fontSize: 36,
                color: CupertinoColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.all(10)),
          const Center(
            child: Text(
              "Enter your Email address to reset your password",
              style: TextStyle(
                fontSize: 15,
                color: CupertinoColors.white,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 55),
            width: 370,
            height: 220,
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
            padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
            child: Column(
              children: [
                const CupertinoTextField(
                  autofocus: true,
                  decoration: BoxDecoration(
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
                SizedBox(
                  width: 400,
                  height: 60,
                  child: CupertinoButton(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      color: CupertinoColors.activeOrange,
                      onPressed: () {},
                      child: const Text(
                        'Summit',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
