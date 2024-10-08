import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void showMyDialog2(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child:   Dialog(
          backgroundColor: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Hello!", style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 22, fontFamily: "LoadingFont", color: CupertinoColors.white
              )),
              const Text("Developer's Telegram:", style: TextStyle(
              fontSize: 18, fontFamily: "LoadingFont", color: CupertinoColors.white
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    _launchTelegram();
                  },
                  child: Container(
                    height: 65,
                    width: 330,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: CupertinoColors.activeBlue
                    ),
                    child: Center(
                      child: Text("Telegram", style: GoogleFonts.josefinSans(
                          color: CupertinoColors.white, fontSize: 22, fontWeight: FontWeight.bold
                      )),
                    ),
                  ),
                ),
              ),
              CupertinoButton(
                  child: const Text("< Back", style: TextStyle(
                    fontFamily: "LoadingFont", fontSize: 20, fontWeight: FontWeight.bold, color: CupertinoColors.destructiveRed
                  )),
                  onPressed: () {
                    Navigator.pop(context);
                  }
              )
            ],
          )
        ),
      );
    },
  );
}
void _launchTelegram() async {
  const url = 'https://t.me/iftixor_ergashboyev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'not opening';
  }
}