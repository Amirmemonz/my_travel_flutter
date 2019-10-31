import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage('https://www.pngtube.com/myfile/detail/65-650095_download-emma-watson-png-free-download-for-designing.png'),
                backgroundColor: Colors.white,
              ),
            )
          ],
          backgroundColor: Colors.deepPurple,
          title: Text("Travelling App"),
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
                    child: new Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return new Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/pic$index.jpg"), fit: BoxFit
                                    .cover)),
//                            child: Center(child: Text('asdasd'),),
                          ),
                        );
                      },
                      itemCount: 10,
                      viewportFraction: 0.8,
                      scale: 0.9,
                    )
                  ),
                Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: Container(

                    child: Text(''),
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
