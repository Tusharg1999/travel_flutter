import 'package:flutter/material.dart';
import '../models/destination_model.dart';

class DestinationCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Top Destinations",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                  onTap: () {
                    print('hi');
                  },
                  child: Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Theme.of(context).primaryColor,
                        letterSpacing: 1.0),
                  ))
            ],
          ),
        ),
        Container(
          height: 300,
          child: ListView.builder(
            itemCount: destinations.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (var context, int index) {
              return Container(
                margin: EdgeInsets.all(10.0),
                width: 210,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Positioned(
                      bottom:15.0,
                    child:Container(
                      width: 200,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding:  EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('${destinations[index].activities.length} activities',style: TextStyle(
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.w600,
                              fontSize: 17
                            ),),
                            Text('${destinations[index].description}',style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              letterSpacing: 0.9,
                              fontStyle: FontStyle.italic
                            ),)
                          ],
                        ),
                      ),
                    ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0,2.0),
                            blurRadius: 6.0
                          )
                        ]
                      ),
                      child: Stack(
                        children: <Widget>[
                         ClipRRect(
                           borderRadius:BorderRadius.circular(20.0),
                           child:Image(
                              height: 180,
                              width: 180,
                              image: AssetImage(destinations[index].imageUrl),
                              fit: BoxFit.cover,
                            )
                         )
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
