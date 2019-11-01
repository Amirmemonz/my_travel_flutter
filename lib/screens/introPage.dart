import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'homepage.dart';

class IntroPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome To My Travel',
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/mountain.jpg"), fit: BoxFit
                .cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 500.0, left: 20.0,right: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text.rich(
                    TextSpan(
                        text: "Let's",
                        style: TextStyle(
                            color: Colors.black,fontWeight: FontWeight.w700,fontSize: 40.0
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: " \nExplore",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 30.0)
                          ),
                          TextSpan(
                              text: " Pakistan",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w700,fontSize: 30.0)
                          )
                        ]
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                    endIndent: 150.0,
                    height: 30.0,
                    color: Colors.black,
                  ),
                  Text(
                    "You will find everything in this blog app about travelling to nothern areas of pakistan",
                    style: TextStyle(color: Colors.white,fontSize: 15.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0,left: 40.0),
                    child: SizedBox(
                      height: 50.0,
                      width: 300.0,
                      child: FlatButton(

                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                        color: Colors.greenAccent,
                        child: Text("Let's Explore"),
                        onPressed: (){
                          Navigator.push(context, PageTransition(type: PageTransitionType.downToUp, child: HomePage()));
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}