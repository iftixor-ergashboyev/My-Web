import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_web/widgets/developer_dialog.dart';
import 'package:my_web/widgets/picture_dialog.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: CupertinoColors.white,
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Center(
          child: Column(
            children: [
              const Gap(10),
              ClipOval(
                child: InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    showMyDialog(context);
                  },
                    child: Image.asset("assets/images/profile.png", height: 180, width: 180)),
              ),
              const Gap(10),
               Text("Iftixor Ergashboyev", style: GoogleFonts.josefinSans(
                fontWeight: FontWeight.bold, fontSize: 26, color: CupertinoColors.black
              )),
              Text("Flutter Developer, Forex Trader and Designer", style: GoogleFonts.josefinSans(
                  fontSize: 18, color: CupertinoColors.black
              )),
              const Padding(
                padding: EdgeInsets.only(right: 30, left: 30),
                child: Divider(color: Colors.grey),
              ),
              const Gap(10),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  _launchTelegram();
                },
                child: Container(
                  height: 65,
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: CupertinoColors.activeBlue
                  ),
                  child: Center(
                    child: Text("Telegram", style: GoogleFonts.josefinSans(
                      color: CupertinoColors.white, fontSize: 22, fontWeight: FontWeight.bold
                    )),
                  ),
                ),
              ),
              const Gap(10),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  _launchInstagram();
                },
                child: Container(
                  height: 65,
                  width: 330,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: CupertinoColors.systemPink
                  ),
                  child: Center(
                    child: Text("Instagram", style: GoogleFonts.josefinSans(
                        color: CupertinoColors.white, fontSize: 22, fontWeight: FontWeight.bold
                    )),
                  ),
                ),
              ),
              const Gap(10),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  _launchGitHub();
                },
                child: Container(
                  height: 65,
                  width: 330,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: CupertinoColors.black
                  ),
                  child: Center(
                    child: Text("GitHub", style: GoogleFonts.josefinSans(
                        color: CupertinoColors.white, fontSize: 22, fontWeight: FontWeight.bold
                    )),
                  ),
                ),
              ),
              const Gap(10),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  _launchYouTube();
                },
                child: Container(
                  height: 65,
                  width: 330,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: CupertinoColors.destructiveRed
                  ),
                  child: Center(
                    child: Text("You Tube", style: GoogleFonts.josefinSans(
                        color: CupertinoColors.white, fontSize: 22, fontWeight: FontWeight.bold
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          showMyDialog2(context);
        },
        child: Text("Powered by Iftixor Ergashboyev",
            textAlign: TextAlign.center,
            style: GoogleFonts.firaCode(color: CupertinoColors.black)),
      ),
    );
  }
}

void _launchTelegram() async {
  const url = 'https://t.me/iftixor_ergashboyev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'not opening';
  }
}

void _launchInstagram() async {
  const url = 'https://www.instagram.com/iftixor_ergashboyev/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'not opening';
  }
}

void _launchGitHub() async {
  const url = 'https://github.com/iftixor-ergashboyev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'not opening';
  }
}

void _launchYouTube() async {
  const url = 'https://youtube.com/@iftixor_ergashboyev?si=laUusULPSzr7Y3Ad';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'not opening';
  }
}
