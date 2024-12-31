import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 50, // Footer'ın yüksekliği
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              _launchURL('https://www.instagram.com/');
            },
            icon: FaIcon(FontAwesomeIcons.instagram),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              _launchURL('https://www.facebook.com/');
            },
            icon: FaIcon(FontAwesomeIcons.facebook),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              _launchURL('https://twitter.com/');
            },
            icon: FaIcon(FontAwesomeIcons.twitter),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
