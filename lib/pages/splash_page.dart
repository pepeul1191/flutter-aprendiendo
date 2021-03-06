import 'package:flutter/material.dart';
import 'dart:async';

class SplashPage extends StatefulWidget{
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>{
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), ()=> Navigator.of(context).pushNamed('/login'));
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.redAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.greenAccent,
                          size: 50.0,
                        )
                        //child: Image.asset('assets/icon.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:10.0)
                      ),
                      Text(
                        "FlutterKart", style:TextStyle(
                          color: Colors.white, 
                          fontSize: 24.0, 
                          fontWeight: FontWeight.bold
                        )
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                      backgroundColor: Colors.pinkAccent,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:20.0),
                    ),
                    Text(
                      "Online Store \n For Everyone",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}