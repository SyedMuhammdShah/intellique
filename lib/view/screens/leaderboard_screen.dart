import 'package:flutter/material.dart';
import 'package:local_package/res/colors.dart';
import 'package:local_package/view/screens/rewards_screen.dart';
import 'package:local_package/view/widgets/leaderboard_list.dart';
import 'package:local_package/view/widgets/toppers_widget.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen>{

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ToppersWidget(),
        LeaderboardList()


      ],
    );
  }
}
