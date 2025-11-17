import 'package:flutter/cupertino.dart';

class TextCustom {
 static Widget qoute(String Qoute) {
    return Center(
        child: Text(
          Qoute,
      style: const TextStyle(
        fontSize: 28,
        color: Color(0xffffffff),
      ),
    ));
  }
}
