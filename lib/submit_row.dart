library submit_row;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChangeSubmitRow extends StatefulWidget {
  ChangeSubmitRow(
      {@required this.animation,
      @required this.onClick,
      @required this.loading,
      this.text: '',
      this.scale: 1,
      this.margin,
      this.buttonColors: const [Color(0xFF29B6F6), Color(0xFF4FC3F7)],
      this.arrowColor: const Color(0xFFFFFFFF)})
      : assert(animation != null),
        assert(onClick != null),
        assert(loading != null);

  final Animation<Color> animation;
  final String text;
  final double scale;
  final Function onClick;
  final bool loading;
  final List<Color> buttonColors;
  final Color arrowColor;
  final EdgeInsets margin;

  @override
  _ChangeSubmitRowState createState() => _ChangeSubmitRowState();
}

class _ChangeSubmitRowState extends State<ChangeSubmitRow> {
  Widget _text() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
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
        margin: EdgeInsets.fromLTRB(22, 0, 32, 0),
        child: CircularProgressIndicator(
          valueColor: widget.animation,
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.fromLTRB(0, 10, 20, 0),
        width: 70,
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
            width: 70,
            height: 40,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: widget.buttonColors,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(30.0)),
            child: Icon(
              Icons.arrow_forward,
              color: widget.arrowColor,
              size: 27,
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
              margin: widget.margin,
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
