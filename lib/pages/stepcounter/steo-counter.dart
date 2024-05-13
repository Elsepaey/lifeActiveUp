import 'package:flutter/material.dart';

class StepCounter extends StatelessWidget {
   StepCounter({super.key});
  TextEditingController textEditingController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController=TextEditingController();
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Today Steps"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 29,
          ),
          SizedBox(
            height: 200.0,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    width: 200,
                    height: 200,
                    child: new CircularProgressIndicator(
                      backgroundColor: Colors.grey.shade300,
                      strokeWidth: 15,
                      value: 0.4,
                    ),
                  ),
                ),
                Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Today Steps"), Text("400")],
                )),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.all(8),
            padding: const EdgeInsets.all(12),
            height: screenHeight / 7,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Summary",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "0.12 km",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Distance"),
                      ],
                    ),
                    Container(width: 4,height:40,color: Colors.black,),
                    Column(
                      children: [
                        Text(
                          "600 steps",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Steps Covered"),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.all(8),
            padding: const EdgeInsets.all(12),
            height: screenHeight / 7,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Goal",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Steps Goal"),
                    Text(
                      "600 steps",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
