import 'package:flutter/material.dart';
import 'package:intellique/src/res/colors.dart';


class ToppersContainer extends StatelessWidget {
   ToppersContainer({super.key, required this.image});
  
  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: MediaQuery.of(context).size.height * 0.12,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color(0xffffffff).withOpacity(0.01),
              AppColors.mainColor.withOpacity(0.5)
            ], // Gradient from https://learnui.design/tools/gradient-generator.html
            tileMode: TileMode.mirror,
          ),
          border: Border.all(color: Color(0xffffffff).withOpacity(0.25),)
      ),
      child: Row(
        children: [
          SizedBox(width: MediaQuery.of(context).size.width * 0.1,),
          CircleAvatar(backgroundColor: Colors.green, backgroundImage: AssetImage(image),),
          SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
          Text("Agnes Jones", style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}
