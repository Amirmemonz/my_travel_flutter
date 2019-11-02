import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:page_transition/page_transition.dart';
import 'journies/murre.dart';

class Slider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> cities = ['Murree','Mushkpori Top','Lake Saif-ul-Malok'];
    List<String> dates = ['23 September 2019','22 October 2019','25 September 2019'];
    return new Swiper(
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: (){
            if(index == 0){
              print('clicked');
              Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: Murree()));

            }
            else if(index == 1){
              print('2');
            }
          },
          child: new Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/pic$index.jpg"), fit: BoxFit
                        .cover)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 220.0,left: 20),
                  child: Text.rich(
                    TextSpan(
                        text: cities[index]+"\n",
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
                        children: <TextSpan>[
                          TextSpan(
                              text: dates[index],
                              style: TextStyle(fontSize: 11)
                          )
                        ]
                    ),
                  ),
                )
            ),
          ),
        );
      },
      autoplayDelay: 4000,
      autoplay: true,
      itemCount: 3,
      viewportFraction: 0.7,
      scale: 0.8,
    );
  }
}
