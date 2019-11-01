import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_travel/screens/slider.dart' as prefix0;
import 'slider.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Travelling App",style: TextStyle(color: Colors.black),),
        ),
        drawer: Drawer(),
        body: new Container(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('My Travel',style: TextStyle(
                  color: Colors.black,
                  fontSize:25.0,fontWeight: FontWeight.w700
                ),),SizedBox(height: 5.0 ,),
                Text('All my trip with friends and love',),
                  SizedBox(height: 20,),
                  Expanded(
                    child: prefix0.Slider()
                  ),
                SizedBox(height: 35,),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('My Experiences',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Text('All travel experiences with friends and love',style: TextStyle(fontSize: 14,color: Colors.black)),
                      SizedBox(height: 10,),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  CircleAvatar(backgroundColor: Colors.black,
                                  maxRadius: 25,
                                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                                  ),
                                  SizedBox(width: 6,height: 20,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text('Amir Memon',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                                        Text('31 October 2019',style: TextStyle(fontWeight: FontWeight.w100,fontSize: 12),),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                child: Text('Before get admission in CUI islamabad i was hate travelling and outing with friends and family but when i shift '
                                    'to islamabad i start exploring hills and mountains and beauty of nothern areas and where i find peace love and passion '
                                    'of travelling and this blog app i will tell you all my travellig experiences on bike\n\n',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
