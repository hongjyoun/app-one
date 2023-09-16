import 'package:flutter/material.dart';

void navigatorOnPush(BuildContext context, Widget destination) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => destination,
    ),
  );
}
