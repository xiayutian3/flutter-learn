import 'package:flutter/material.dart';
import '../../core/extension/int_extension.dart';

class HYOperationItem extends StatelessWidget {
  final Widget _icon;
  final String _text;

  HYOperationItem(this._icon,this._text);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _icon,
        SizedBox(width: 3.px,),
        Text(_text)
      ],
    );
  }
}
