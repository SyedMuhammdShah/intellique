import 'package:flutter/material.dart';
import 'package:intellique/src/view/widgets/leaderboard_list.dart';
import 'package:intellique/src/view/widgets/toppers_widget.dart';


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
