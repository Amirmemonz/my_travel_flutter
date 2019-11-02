import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Murree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: true,
            //`true` if you want Flutter to automatically add Back Button when needed,
            //or `false` if you want to force your own back button every where
            title: Text('Murree Trip'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, false),
            )),
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              new Swiper(
                itemBuilder: (BuildContext context, int index) {
                  int count = index +1;
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 450),
                    child: new Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/murree$count.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  );
                },
                autoplayDelay: 4000,
                autoplay: true,
                itemCount: 3,
                itemWidth: 425.0,
                layout: SwiperLayout.STACK,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 270),
                child: Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 30, left: 20),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  size: 40,
                                ),
                                Text(
                                  "Murree, Punjab Pakistan",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text("On 23 Sep 2019, I decided to travel to the northern areas of Pakistan on my Chinese 70cc bike. It was my first experience on the bike to travel more than 60km. So on 23 Sep morning me and my friend get ready for this amazing journey, fortunately, it was a cloudy day and drizzling we departed from Islamabad on 9 am and we have to cover the distance of 60km from Islamabad to Murree."
                                "on National Highway road was quite clear and smooth i was riding the bike on average of 50-60km so after when we cover 50km acclivitous road started which gave us a tough time to incline at that road our average speed was 20km"
                                ". Finally, we reached Murree at 11 am and we parked the bike on Mall road which is the famous spot of Murree. Murree weather was so chill it was drizzling there we stay there for 2 hours take our lunch on Mall Road and departed for our next stop which was Ayubia.",style: TextStyle(fontSize: 16),),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
