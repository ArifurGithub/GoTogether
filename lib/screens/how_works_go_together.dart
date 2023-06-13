
import 'package:flutter/material.dart';

import 'nav_bar.dart';

class HowWorksGoTogether extends StatefulWidget {
  const HowWorksGoTogether({Key? key}) : super(key: key);

  @override
  State<HowWorksGoTogether> createState() => _HowWorksGoTogetherState();
}

class _HowWorksGoTogetherState extends State<HowWorksGoTogether> {

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
                  const SizedBox(height: 30,),
                  const Text(
                    'How Works Go Together',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  Divider(),
                  const SizedBox(height: 50,),
                  Container(
                    margin: const EdgeInsets.only(top: 0, bottom: 0, left: 20, right: 20),
                    child: const Column(
                      children: [
                        Text(
                          'Create Account',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Register & Login to your Go Together account.',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50,),
                  Container(
                    margin: const EdgeInsets.only(top: 0, bottom: 0, left: 20, right: 20),
                    child: const Column(
                      children: [
                        Text(
                          'Activity Partner',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Connect with the right exercise partner here on Go Together.',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50,),
                  Container(
                    margin: const EdgeInsets.only(top: 0, bottom: 0, left: 20, right: 20),
                    child: const Column(
                      children: [
                        Text(
                          'Meet-up',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Find the nearest gym/training ground with your exercise partner.',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black
                          ),
                        ),
                      ],
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
