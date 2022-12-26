import 'package:flutter/material.dart';
import 'package:todo/constants.dart';
import 'package:todo/screens/homepage/widgets/main_activities.dart';
import 'package:todo/screens/homepage/widgets/my_date_widget.dart';

class HomepageScreen extends StatefulWidget {

  
  const HomepageScreen({Key? key}) : super(key: key);

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  bool isChecked = false;
  bool isLocked = false;  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text(
                'Good evening',
                style: TextStyle(fontSize: 24),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, bottom: 20),
              child: Text(
                'Terry',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyDateWidget(),
                  MyDateWidget(),
                  MyDateWidget(isSelected: true),
                  MyDateWidget(),
                  MyDateWidget(),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    'My Habits',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: kPrimaryColor, shape: BoxShape.circle),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
             SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Spacer(),
                MainActivies(kPrimaryColor,"Reading"),
                 Spacer(),
                 MainActivies(Colors.orange,"Walking"),
                 Spacer(),
                 MainActivies(Colors.blueAccent,"Biking"),
                 Spacer(),
              ],
            ),

             SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                      'Todays Tasks',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,),
                    ),
            ),
                   SizedBox(
              height: 15,
            ),

            Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Card(
               shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
                shadowColor: Colors.grey,
      child: ListTile(
        leading: Checkbox(  
                      checkColor: Colors.greenAccent,  
                      activeColor: kPrimaryColor,  
                      value: isChecked,  
                      onChanged: (bool? value) {
                         setState(() {
                   isChecked = value!;
                        });
      },
                    ),  
        title: Text('Buy food for dinner'),
        //trailing: Icon(Icons.more_vert),
      ),
              ),
            ),


                     SizedBox(
              height: 15,
            ),

            Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Card(
               shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
                shadowColor: Colors.grey,
      child: ListTile(
        leading: Checkbox(  
                      checkColor: Colors.greenAccent,  
                      activeColor: kPrimaryColor,  
                      value: isLocked,  
                      onChanged: (bool? value) {
                         setState(() {
                   isLocked = value!;
                        });
      },
                    ),  
        title: Text('Call Marie'),
        //trailing: Icon(Icons.more_vert),
      ),
              ),
            ),


                     SizedBox(
              height: 15,
            ),

      //       Padding(
      //          padding: const EdgeInsets.symmetric(horizontal: 15),
      //         child: Card(
      //          shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(20.0),
      // ),
      //           shadowColor: Colors.grey,
      // child: ListTile(
      //   leading: Checkbox(  
      //                 checkColor: Colors.greenAccent,  
      //                 activeColor: kPrimaryColor,  
      //                 value: isChecked,  
      //                 onChanged: (bool? value) {
      //                    setState(() {
      //              isChecked = value!;
      //                   });
      // },
      //               ),  
      //   title: Text('Go to the Gym'),
      //   //trailing: Icon(Icons.more_vert),
      // ),
      //         ),
      //       ),
            
            
          ],
        ),
      ),
    );
  }
}
