import 'package:flutter/material.dart';
import 'package:turistapp/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
        Duration(milliseconds: 2500),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: SafeArea(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Image.asset(
            "assets/images/oso negro.png",
            fit: BoxFit.fill,
            alignment: Alignment.center,
            width: 350,
            height: 350,
          ),
          Spacer(),
          Text(
            "TuristApp",
          ),
          Spacer(),
          CircularProgressIndicator(),
          Spacer(),
          Text(
            "Bienvenido",
          ),
          Spacer(),
        ],
        //),
      ),
    );
  }
}
