import 'package:flutter/material.dart';
import 'package:local_package/Models/leaderboard_model.dart';
import 'package:local_package/res/colors.dart';

class ToppersWidget extends StatelessWidget {
  ToppersWidget({super.key, required this.first, required this.second, required this.third});

  LeaderboardModel first;
  LeaderboardModel second;
  LeaderboardModel third;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          secondPersons(second.userName, second.userScore.toString(), "assets/images/profile2.png" ,context),

          firstPerson(first.userName, first.userScore.toString(),"assets/images/profile1.png" ,context),

          thirdPersons(third.userName, third.userScore.toString(),"assets/images/profile3.png" ,context),
        ],
      ),
    );
  }
}

class RewardsWidget extends StatelessWidget {
  RewardsWidget({required this.score});

  String score;

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
          Text(score, style: TextStyle(fontSize: 12 ,color: AppColors.mainColor, fontWeight: FontWeight.w500),),
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

Widget thirdPersons(String name, String score,String image,BuildContext context){
  return Stack(
    children: [
      Column(
        children: [
          CircleAvatar(maxRadius: 25, backgroundImage: AssetImage(image),),
          SizedBox(height: 10,),
          Text(name, style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),),
          SizedBox(height: 2,),
          RewardsWidget(score: score,)
        ],
      ),
      Positioned(
        left: MediaQuery.of(context).size.width * 0.025,
        bottom: MediaQuery.of(context).size.height * 0.062,
          // child: Icon(Icons.badge_outlined, size: 20,)
        child: Image.asset("assets/icons/3rd.png", width: 50, height: 25,),
      )
    ],
  );
}

Widget secondPersons(String name, String score,String image,BuildContext context){
  return Stack(
    children: [
      Column(
        children: [
          CircleAvatar(maxRadius: 25, backgroundImage: AssetImage(image),),
          SizedBox(height: 10,),
          Text(name, style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),),
          SizedBox(height: 2,),
          RewardsWidget(score: score,)
        ],
      ),
      Positioned(
        left: MediaQuery.of(context).size.width * 0.06,
        bottom: MediaQuery.of(context).size.height * 0.062,
        // child: Icon(Icons.badge_outlined, size: 20,)
        child: Image.asset("assets/icons/2nd.png", width: 50, height: 25,),
      )
    ],
  );
}

Widget firstPerson(String name, String score,String image,BuildContext context){
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            CircleAvatar(maxRadius: 32, backgroundImage: AssetImage(image),),
            SizedBox(height: 10,),
            Text(name, style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),),
            SizedBox(height: 2,),
            RewardsWidget(score: score,)
          ],
        ),
      ),
      Positioned(
          left: MediaQuery.of(context).size.width * 0.007,
          bottom: MediaQuery.of(context).size.height * 0.062,
          // child: Icon(Icons.badge_outlined, size: 20,),
        child: Image.asset("assets/icons/1st.png", width: 60, height: 30,),
      )

    ],
  );
}