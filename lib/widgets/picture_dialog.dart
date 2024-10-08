import 'dart:ui';
import 'package:flutter/material.dart';

void showMyDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Dialog(
          backgroundColor: Colors.transparent,
          child: Container(
            height: 300,
            width: 300,
            child: ClipOval(
              child: Image.asset("assets/images/profile.png",
                height: 140,
                width: 140,
              ),
            ),
          ),
        ),
      );
    },
  );
}