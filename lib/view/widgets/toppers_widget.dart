import 'package:flutter/material.dart';
import 'package:local_package/res/colors.dart';

class ToppersWidget extends StatelessWidget {
  const ToppersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          secondPersons(context),

          firstPerson(context),

          thirdPersons(context),
        ],
      ),
    );
  }
}

class RewardsWidget extends StatelessWidget {
  const RewardsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 65,
      decoration: BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.circular(10),

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("890", style: TextStyle(fontSize: 12 ,color: AppColors.mainColor, fontWeight: FontWeight.w500),),
          Row(
            children: [
              Image.asset("assets/icons/Group.png", width: 15, height: 10,),
              Image.asset("assets/icons/calander.png", width: 15, height: 10,)

              // Icon(Icons.noise_aware, size: 10,),
              // Icon(Icons.calendar_month, size: 10,),
            ],
          )
        ],
      ),
    );
  }
}

Widget thirdPersons(BuildContext context){
  return Stack(
    children: [
      Column(
        children: [
          CircleAvatar(maxRadius: 25,),
          SizedBox(height: 10,),
          Text("Agnes", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),),
          SizedBox(height: 2,),
          RewardsWidget()
        ],
      ),
      Positioned(
        left: MediaQuery.of(context).size.width * 0.02,
        bottom: MediaQuery.of(context).size.height * 0.062,
          // child: Icon(Icons.badge_outlined, size: 20,)
        child: Image.asset("assets/icons/3rd.png", width: 50, height: 25,),
      )
    ],
  );
}

Widget secondPersons(BuildContext context){
  return Stack(
    children: [
      Column(
        children: [
          CircleAvatar(maxRadius: 25,),
          SizedBox(height: 10,),
          Text("Agnes", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),),
          SizedBox(height: 2,),
          RewardsWidget()
        ],
      ),
      Positioned(
        left: MediaQuery.of(context).size.width * 0.02,
        bottom: MediaQuery.of(context).size.height * 0.062,
        // child: Icon(Icons.badge_outlined, size: 20,)
        child: Image.asset("assets/icons/2nd.png", width: 50, height: 25,),
      )
    ],
  );
}

Widget firstPerson(BuildContext context){
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            CircleAvatar(maxRadius: 32,),
            SizedBox(height: 10,),
            Text("Agnes", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),),
            SizedBox(height: 2,),
            RewardsWidget()
          ],
        ),
      ),
      Positioned(
          left: MediaQuery.of(context).size.width * 0.0065,
          bottom: MediaQuery.of(context).size.height * 0.062,
          // child: Icon(Icons.badge_outlined, size: 20,),
        child: Image.asset("assets/icons/1st.png", width: 60, height: 30,),
      )

    ],
  );
}