import 'package:flutter/material.dart';

import 'nav_bar.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {

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
      body: SafeArea(
        child: Container(
          child: Center(
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Text(
                    'About Us',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  Divider(),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Exercising is more fun and enjoyable with a partner! Go Together '
                          'mission is to provide a safe platform to find the right gym '
                          'partner for whatever activity you wish to do.',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              )
          ),
        ),
      ),
    );
  }
}
