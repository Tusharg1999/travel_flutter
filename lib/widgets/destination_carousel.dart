import 'package:flutter/material.dart';
class DestinationCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            children: <Widget>[
              Text("Top Destinations",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
             GestureDetector(
               onTap: (){
                 print('hi');
               },
              child:Text("See All",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Theme.of(context).primaryColor,
                  letterSpacing: 1.0
              ),
              )
             )
            ],
          ),
        )
      ],
    );
  }
}
