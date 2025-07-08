import 'package:flutter/cupertino.dart';

class LoginMask extends StatefulWidget {
  const LoginMask({super.key});

  @override
  State<LoginMask> createState() => _LoginMaskState();
}

class _LoginMaskState extends State<LoginMask> {
  String _username = "";
  String _password = "";
  bool _canLogin = false;

  @override
  void initState() {
    super.initState();
    _username = "";
    _password = "";
    _canLogin = false;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Willkommen"),
            CupertinoTextField(onChanged: _onChangedUsername),
            CupertinoTextField(
              onChanged: _onChangedPassword,
              obscureText: true,
            ),
            CupertinoButton(
              onPressed: _canLogin ? _onPressed : null,
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }

  void _onChangedUsername(String value) {
    _username = value;
    _checkCanLogin();
  }

  void _onChangedPassword(String value) {
    _password = value;
    _checkCanLogin();
  }

  void _onPressed() {}

  void _checkCanLogin() {
    setState(() {
      _canLogin = _username.isNotEmpty && _password.isNotEmpty;
    });
  }
}
