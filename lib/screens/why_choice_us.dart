
import 'package:flutter/material.dart';

import 'nav_bar.dart';

class WhyChoiceUs extends StatefulWidget {
  const WhyChoiceUs({Key? key}) : super(key: key);

  @override
  State<WhyChoiceUs> createState() => _WhyChoiceUsState();
}

class _WhyChoiceUsState extends State<WhyChoiceUs> {

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
                  const Text(
                    'Why Choice Us',
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
                          'Accountability Partner',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Build progressive success with your own accountability partner.',
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
                          'Life-long Relationship',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Build relationships based on a positive foundation.',
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
                          'No commitment',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Fun & free to use.',
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
