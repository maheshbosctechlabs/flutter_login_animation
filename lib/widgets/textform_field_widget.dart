import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final IconData leadingIcon;
  final FocusNode focusNode;
  final IconData suffixIcon;

  TextFormFieldWidget({
    Key key,
    this.controller,
    @required this.leadingIcon,
    @required this.focusNode,
    this.suffixIcon,
  }) : super(key: key);

  @override
  _TextFormFieldWidgetState createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  void initState() {
    widget.focusNode.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.focusNode,
      builder: (context, child) {
        return Transform.scale(
          scale: widget.focusNode.hasFocus ? 1.1 : 1,
          child: child,
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.0),
        ),
        elevation: 5,
        child: TextFormField(
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.caption.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color(0xFF31877A),
              ),
          controller: widget.controller,
          focusNode: widget.focusNode,
          decoration: InputDecoration(
            prefixIcon: Icon(
              widget.leadingIcon,
              color: Colors.grey,
            ),
            suffixIcon: Icon(
              widget.suffixIcon,
            ),
            contentPadding: EdgeInsets.all(15.0),
            border: InputBorder.none,
            focusColor: Colors.green,
          ),
        ),
      ),
    );
  }
}
