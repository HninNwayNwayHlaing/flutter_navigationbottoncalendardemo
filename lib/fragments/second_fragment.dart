import 'package:flutter/material.dart';
import 'dart:io';
import 'package:url_launcher/url_launcher.dart';

class SecondFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new RaisedButton(
        child: new Text('Launch'), onPressed: () => launchMaps(context),),
    );
  }

  launchMaps(BuildContext context) async {
    if (Platform.isAndroid) {
      const url = "https://www.google.com/maps/search/?api=1&query=16.8316335,96.1455428,17&query_place_id=PLACE_ID";
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
    else {
      // iOS
      const url = 'http://maps.apple.com/?ll=16.8316335,96.1455428';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
    Scaffold.of(context).showSnackBar(
        new SnackBar(content: new Text('IoS Map')));
  }
}
