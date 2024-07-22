import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:local_package/res/colors.dart';
// import 'package:percent_indicator/percent_indicator.dart';
class RewardsScreen extends StatelessWidget {
  const RewardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Expanded(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  textAlign: TextAlign.center,
                  "Earn Rewards by completing \n these Tasks",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ]),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.left,
                      "Tasks Completed",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  //   LinearPercentIndicator(
                  //   width: 100.0,
                  //   lineHeight: 8.0,
                  //   percent: 0.9,
                  //   progressColor: Colors.blue,
                  // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
