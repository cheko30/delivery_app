import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.white
      )
    );
    
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1482049016688-2d3e1b311543?q=80&w=2020&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                ),
              )
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 1.0,
                sigmaY: 1.0
              ),
              child: Container(
                color:Colors.black.withValues(
                  alpha: 0.3
                )
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: Text(
                  'DELIVERED FAST FOOD TO YOUR DOOR',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 45.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
                child: Text(
                  'Set exact location to find the right restaurants near you',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 17.0
                  ),
                ),
              ),
              SizedBox(
                width: 350,
                height: 45.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(255, 140, 0, 1.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Log in',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 350,
                height: 45.0,
                margin: EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                  onPressed: () {          
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(0, 122, 255, 1.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/facebook.png'),
                        width: 20.0,
                        height: 20.0,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Connect with Facebook',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      )
    );
  }
}