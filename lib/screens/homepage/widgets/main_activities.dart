import 'package:flutter/material.dart';
import 'package:todo/constants.dart';

class MainActivies extends StatelessWidget {
  
   Color? color;
   String? activity;
  MainActivies( this.color , this.activity);





  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: color , borderRadius: BorderRadius.circular(20)),
      child: Column(children: [
        CircleAvatar(
          backgroundColor: Colors.white.withOpacity(0.2),
          child: Icon(
            Icons.book,
            size: 30,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
         '$activity' ,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w800, color: Colors.white),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Stack(
            children: [
              Container(
                height: 5,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
