import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sampleproject/screens/notification.dart';


class SplashScreen extends StatefulWidget {
  SplashScreen();
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    print("called here..!");
    

    
    Timer(
      Duration(seconds: 1),
          () =>  Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) =>
                  Notifications(), 
            ),
          ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Splash Screen"),
        ),
      ),
    );
  }
 
}
