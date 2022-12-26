import 'package:flutter/material.dart';
import 'package:todo/constants.dart';

class MyDateWidget extends StatelessWidget {
  const MyDateWidget({Key? key, this.isSelected = false}) : super(key: key);

  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(7.5),
          decoration: BoxDecoration(
              color: isSelected! ? kPrimaryColor : Colors.grey,
              borderRadius: BorderRadius.circular(15)),
          child: Text(
            '4',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Text('Wed')
      ],
    );
  }
}
