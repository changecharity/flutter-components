library submit_row;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChangeSubmitRow extends StatefulWidget {
  ChangeSubmitRow({
    @required this.animation,
    @required this.onClick,
    @required this.loading,
    this.text : '',
    this.scale : 1,
  });

  final Animation<Color> animation;
  final String text;
  final double scale;
  final Function onClick;
  final bool loading;

  @override
  _ChangeSubmitRowState createState() => _ChangeSubmitRowState();
}

class _ChangeSubmitRowState extends State<ChangeSubmitRow> {
  Widget _text() {
    return Container(
      margin: EdgeInsets.fromLTRB(10,10,10,0),
      child: Text(
        widget.text,
        style: TextStyle(
          fontSize: 33,
        ),
      ),
    );
  }

  Widget _button() {
    if (widget.loading) {
      return Container(
        margin: EdgeInsets.fromLTRB(32, 0, 32, 0),
        child: CircularProgressIndicator(
          valueColor: widget.animation,
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.fromLTRB(0,10,20,0),
        child: RaisedButton(
          onPressed: () {
            FocusScope.of(context).unfocus();
            widget.onClick();
          },
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          elevation: 10,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(60))),
          child: Ink(
            width: 90,
            height: 50,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.lightBlue[400], Colors.lightBlue[300]],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(30.0)),
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Transform.scale(
          scale: widget.scale,
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height > 700 ? 70 : 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  _text(),
                  _button(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}