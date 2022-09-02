import 'package:country_app/home_module/application/home_screen.dart';
import 'package:country_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../home_module/infreestructure/home_provider.dart';


class SplashScreen extends StatefulWidget {

   SplashScreen({Key? key}) : super(key: key){}

  @override
  State<SplashScreen> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {

    super.initState();
    var d=const Duration(seconds: 4);
    Future.delayed(d,(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
        return  const HomeScreen();
      }), (route) => false);


    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        body:
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                    height: 200,
                    width: 200,
                    child:Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvRzh7C9ZIr-ouorUroB-xWm9p0RVlFP3sHS0RR7a04qfQGs3rkMHniFay2945N3IzcjE&usqp=CAU'),
                ),

                CircularProgressIndicator(
                  color: AppColor.yellow,
                ),
              ],
            ),
          ),
        ),
      );
  }
}
