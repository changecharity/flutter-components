library text_field;

import 'package:flutter/material.dart';

class ChangeTextInput extends StatefulWidget {
  ChangeTextInput({
    @required this.controller,
    @required this.focusNode,
    @required this.hintText,
    @required this.prefixIcon,
    @required this.autofillHint,
    this.isPassword: false,
    this.last: false,
    this.errFunc,
    this.errMsg: '',
    this.lastFunc,
  })  : assert(controller != null),
        assert(focusNode != null),
        assert(hintText != null),
        assert(prefixIcon != null),
        assert(autofillHint != null);

  final TextEditingController controller;
  final FocusNode focusNode;
  final IconData prefixIcon;
  final String hintText;
  final String errMsg;
  final bool isPassword;
  final bool last;
  final Function errFunc;
  final Function lastFunc;
  final String autofillHint;

  @override
  _ChangeTextInputState createState() => _ChangeTextInputState();
}

class _ChangeTextInputState extends State<ChangeTextInput> {
  bool _obscurePass = true;

  Widget _textContainer(constraints) {
    return Container(
      margin: EdgeInsets.only(
          right: constraints.maxWidth * 0.05,
          left: constraints.maxWidth * 0.05),
      decoration: BoxDecoration(
        color: MediaQuery.of(context).platformBrightness == Brightness.light ? Colors.white : Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: MediaQuery.of(context).platformBrightness == Brightness.light ? Colors.grey[350] : Colors.grey[600],
            blurRadius: 20.0,
            offset: Offset.fromDirection(0.9),
          ),
        ],
      ),
      child: TextField(
        autofillHints: [widget.autofillHint],
        controller: widget.controller,
        obscureText: widget.isPassword ? _obscurePass : false,
        onChanged: (s) {
          setState(() {
            widget.errFunc("");
          });
        },
        onEditingComplete: () {
          widget.last
              ? widget.focusNode.unfocus()
              : widget.focusNode.nextFocus();
          widget.lastFunc();
        },
        decoration: InputDecoration(
          labelText: widget.hintText,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          prefixIcon: Container(
            margin: EdgeInsets.only(left: 25, right: 15),
            child: Icon(
              widget.prefixIcon,
              size: 20,
              color: MediaQuery.of(context).platformBrightness == Brightness.light ? Colors.black : Colors.white,
            ),
          ),
          suffixIcon: widget.isPassword ? _passSuffix() : null,
        ),
        focusNode: widget.focusNode,
        textInputAction:
            widget.last ? TextInputAction.done : TextInputAction.next,
      ),
    );
  }

  Widget _errContainer() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(
          left: 40,
          top: 2,
          bottom: 3,
        ),
        height: 25,
        child: Text(
          widget.errMsg,
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _passSuffix() {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 20),
      child: IconButton(
        splashColor: Colors.transparent,
        onPressed: () {
          setState(() {
            _obscurePass = !_obscurePass;
          });
        },
        icon: Icon(
          _obscurePass ? Icons.visibility : Icons.visibility_off,
          size: 20,
          color: MediaQuery.of(context).platformBrightness == Brightness.light ? Colors.black : Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: <Widget>[
            _textContainer(constraints),
            _errContainer(),
          ],
        );
      },
    );
  }
}
