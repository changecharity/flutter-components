import 'package:flutter/material.dart';
import 'package:changecharitycomponents/change_charity_components.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Change Components Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textController;
  FocusNode _focusNode;
  String _errMsg = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeTextInput(
        autofillHint: AutofillHints.password,
        controller: _textController,
        focusNode: _focusNode,
        hintText: "Password",
        prefixIcon: Icons.lock,
        isPassword: true,
        errMsg: _errMsg,
        errFunc: (s) {
          setState(() {
            _errMsg = s;
          });
        },
      ),
    );
  }
}
