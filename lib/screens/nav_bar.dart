import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_together_app/screens/why_choice_us.dart';

import 'about_us.dart';
import 'facebook_community.dart';
import 'home_screen.dart';
import 'how_works_go_together.dart';
import 'login_screen.dart';



class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: null,
            accountEmail: null,
            currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/app_logo.png',
                    width: 90,
                    height: 90,
                  ),
                )
            ),
            decoration: BoxDecoration(
              //color: Colors.deepPurple,
              color: Colors.lightBlueAccent[450],
            ),
          ),
          Container(
            height: 45,
            child: ListTile(
              leading: Icon(
                Icons.home_outlined,
                //color: Colors.greenAccent[400],
                color: Colors.lightBlueAccent[400],
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.lightBlueAccent[400],
                ),
              ),
              //onTap: () => print('Home'),
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
          ),
          Divider(),
          Container(
            height: 45,
            child: ListTile(
              leading: Icon(
                Icons.home_repair_service_outlined,
                //color: Colors.greenAccent[400],
                color: Colors.lightBlueAccent[400],
              ),
              title: Text(
                'About Us',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.lightBlueAccent[400],
                ),
              ),
              //onTap: () => print('Home'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUs()));
                //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AboutUs()));
              },
            ),
          ),
          Divider(),
          Container(
            height: 45,
            child: ListTile(
              leading: Icon(
                Icons.work_history,
                //color: Colors.greenAccent[400],
                color: Colors.lightBlueAccent[400],
              ),
              title: Text(
                'How Works Go Together',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.lightBlueAccent[400],
                ),
              ),
              //onTap: () => print('Home'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HowWorksGoTogether()));
                //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HowWorksGoTogether()));
              },
            ),
          ),
          Divider(),
          Container(
            height: 45,
            child: ListTile(
              leading: Icon(
                Icons.query_stats_rounded,
                //color: Colors.greenAccent[400],
                color: Colors.lightBlueAccent[400],
              ),
              title: Text(
                'Why Choice Us',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.lightBlueAccent[400],
                ),
              ),
              //onTap: () => print('Home'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => WhyChoiceUs()));
                //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WhyChoiceUs()));
              },
            ),
          ),
          Divider(),
          Container(
            height: 45,
            child: ListTile(
              leading: Icon(
                Icons.facebook,
                //color: Colors.greenAccent[400],
                color: Colors.lightBlueAccent[400],
              ),
              title: Text(
                'Facebook Community',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.lightBlueAccent[400],
                ),
              ),
              //onTap: () => print('Home'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => FacebookCommunity()));
                //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FacebookCommunity()));
              },
            ),
          ),
          Divider(),
          Container(
            height: 45,
            child: ListTile(
              leading: Icon(
                Icons.login,
                //color: Colors.greenAccent[400],
                color: Colors.lightBlueAccent[400],
              ),
              title: Text(
                'Login',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.lightBlueAccent[400],
                ),
              ),
              //onTap: () => print('Home'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
