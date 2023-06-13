import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'home_screen.dart';
// import 'package:gotogetherapp_ios_v4/screens/home_screen.dart';
// import 'package:gotogetherapp_ios_v4/utils/constants.dart';
// import 'package:gotogetherapp_ios_v4/utils/constants.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    navigateToHome();
    super.initState();
  }


  void navigateToHome(){
    Future.delayed(Duration(seconds: 5),
            (){
          //Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
          //Navigator.removeRoute(context, MaterialPageRoute(builder: (context) => HomeScreen()));
          Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => HomeScreen()));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Text("Hellow Splash Screen"),
              SizedBox(height: 30),
              Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset('assets/images/splash_screen_logo.jpg'),
                  )
              ),
              SizedBox(height: 10),
              /// spener 2
              const SpinKitSpinningLines(
                color: Colors.orange,
                size: 50.0,
                // controller: AnimationController(vsync: this, duration: const Duration(milliseconds: 1200)),
              ),
              // CircularProgressIndicator(
              //   strokeWidth: 2,
              //   //valueColor: AlwaysStoppedAnimation(Colors.deepPurple),
              //   //valueColor: AlwaysStoppedAnimation(Colors.greenAccent[250]),
              //   valueColor: AlwaysStoppedAnimation(Colors.white),
              // ),
            ],
          ),
        )
    );
  }
}
