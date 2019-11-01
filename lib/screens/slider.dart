import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Slider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> cities = ['Murree','Mushkpori Top','Margalla Hills','Lake Saif-ul-Malok','Naran','Balakot','Abbottabad','Kulyat','Murree'];
    List<String> dates = ['23 September 2019','22 October 2019','1 October 2019','24 September 2019','24 September 2019','24 September 2019','23 September 2019','23 September 2019','23 September 2019'];
    return new Swiper(
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: (){
            if(index == 0){
              print('1');
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
      itemCount: 9,
      viewportFraction: 0.7,
      scale: 0.8,
    );
  }
}
