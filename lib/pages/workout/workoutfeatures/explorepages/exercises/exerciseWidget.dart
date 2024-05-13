import 'package:flutter/material.dart';
import 'package:nutrifit/core/themes.dart';

class ExerciseWidget extends StatelessWidget {
   ExerciseWidget({super.key,required this.title,required this.imagePath,required this.muscles});
String imagePath;
String title;
List muscles;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),

    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        spreadRadius: 3,
        blurRadius: 4,
        offset: const Offset(0, 1), // changes position of shadow
      ),
    ]
),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                
                
              width: 90,height: 70,
                  clipBehavior: Clip.antiAlias,
                  decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(12)
                  ),
                  child: Image(
                    image: AssetImage(imagePath),
                    fit: BoxFit.fill,
                  )),
              SizedBox(width: 8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.center,
               // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.star_border),
                  Text(title,style: TextStyle(fontWeight: FontWeight.bold),),

                  Text(muscles.join(","),style: TextStyle(fontSize: 12),)
                ],
              ),
            ],
          ),


        ],
      ),
    );
  }
}
