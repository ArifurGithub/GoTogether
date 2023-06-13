// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';
import 'dart:io';

import 'login_screen.dart';
import 'home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_pro/webview_flutter.dart';

import 'nav_bar.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  final Color mainColor = Color(0xFF3366cc);
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
    /*if (Platform.isIOS) {
      WebView.platform = SurfaceAndroidWebView();
    }*/
  }

  int _selectedIndex = 2;
  List<String> urlList = <String>[
    'https://gotogetherapp.com/',
    'https://gotogetherapp.com/login/',
    'https://gotogetherapp.com/register/'
  ];

  void _onTabTapped(int index) {
    setState(() {
      if (index == 0) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
        _selectedIndex = 0;
      } else if (index == 1) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));

        _selectedIndex = 1;
      } else if (index == 2) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => RegisterScreen()));
        _selectedIndex = 2;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: const Text('Go Together'),
        backgroundColor: mainColor,
        centerTitle: true,
        //automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          Builder(
            builder: (BuildContext context) {
              return WebView(
                initialUrl: 'https://gotogetherapp.com/register/',
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (WebViewController webViewController) {
                  _controller.complete(webViewController);
                },
                onProgress: (int progress) {
                  print("WebView is loading (progress : $progress%)");
                },

                navigationDelegate: (NavigationRequest request) {
                  if (request.url.startsWith('https://www.youtube.com/')) {
                    print('blocking navigation to $request}');
                    return NavigationDecision.prevent;
                  }
                  print('allowing navigation to $request');
                  return NavigationDecision.navigate;
                },
                onPageStarted: (String url) {
                  setState(() {
                    _isLoading = true;
                  });
                },
                onPageFinished: (String url) {
                  setState(() {
                    _isLoading = false;
                  });
                },
                backgroundColor: Colors.white,
                gestureNavigationEnabled: true,
                geolocationEnabled: false, //support geolocation or not
              );
            },
          ),
          _isLoading ? Center(child: CircularProgressIndicator()) : Stack(),
        ],
      ),
      /// Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 14),
        backgroundColor: const Color(0xFF084A76),
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: "Login",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.app_registration,
              color: Colors.red,
            ),
            label: "Register",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTabTapped,
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.login),
      //       label: "Login",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.app_registration),
      //       label: "Register",
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   onTap: _onTabTapped,
      // ),
    );
  }
}
