import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intellique/src/res/colors.dart';
import 'package:intellique/src/view/widgets/mlm_screen_widgets/toppers_container.dart';

class MlmScreen extends StatelessWidget {
  const MlmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        children: [
          SizedBox(height: 20,),
          Text("People Connected Through My Refferel System",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 17),),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.075),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text("We have these people in our system.", style: TextStyle(color: Colors.white), textAlign: TextAlign.start,)),
          ),
          ToppersContainer(image: "assets/images/profile2.png",),
          ToppersContainer(image: "assets/images/profile3.png",),
          ToppersContainer(image: "assets/images/profile1.png",),



        ],
      ),
    );
  }
}
