

import 'package:flutter/material.dart';
import 'package:flutter_webview_pro/webview_flutter.dart';

import 'nav_bar.dart';

class FacebookCommunity extends StatefulWidget {
  const FacebookCommunity({Key? key}) : super(key: key);

  @override
  State<FacebookCommunity> createState() => _FacebookCommunityState();
}

class _FacebookCommunityState extends State<FacebookCommunity> {

  Future<bool> _onBackButtonPress() async {
    return (await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Are you sure?'),
        content: Text('Do you want to exit an App'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text('No'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text('Yes'),
          ),
        ],
      ),
    )) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Go Together'),
        centerTitle: true,
      ),
      body: const SafeArea(
        child:  WebView(
          initialUrl: "https://www.facebook.com/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
