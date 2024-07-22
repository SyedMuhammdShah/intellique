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
          secondThirdPersons(context),

          firstPerson(context),

          secondThirdPersons(context),
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
      width: 55,
      decoration: BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.circular(10),

      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("890", style: TextStyle(fontSize: 12 ,color: AppColors.mainColor, fontWeight: FontWeight.w500),),
            Row(
              children: [
                Icon(Icons.noise_aware, size: 10,),
                Icon(Icons.calendar_month, size: 10,),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget secondThirdPersons(BuildContext context){
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
          left: MediaQuery.of(context).size.width * 0.05,
          bottom: MediaQuery.of(context).size.height * 0.067,
          child: Icon(Icons.badge_outlined, size: 20,))
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
          left: MediaQuery.of(context).size.width * 0.06,
          bottom: MediaQuery.of(context).size.height * 0.067,
          child: Icon(Icons.badge_outlined, size: 20,))
    ],
  );
}