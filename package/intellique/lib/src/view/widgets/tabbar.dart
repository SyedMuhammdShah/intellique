import 'package:flutter/material.dart';
import 'package:intellique/src/res/colors.dart';
import 'package:intellique/src/view/screens/leaderboard_screen.dart';
import 'package:intellique/src/view/screens/mlm_screen.dart';
import 'package:intellique/src/view/screens/rewards_screen.dart';
import 'package:intellique/src/view/screens/streak.dart';


class BottomSheetWithTabs extends StatefulWidget {
  @override
  _BottomSheetWithTabsState createState() => _BottomSheetWithTabsState();
}

class _BottomSheetWithTabsState extends State<BottomSheetWithTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 4, vsync: this); // Adjust the length to the number of tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.vertical(top: Radius.circular(170)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 9),
            child: TabBar(
              labelColor: Colors.white,
              controller: _tabController,
              indicatorColor: Colors.white,
              unselectedLabelColor: AppColors.unfocusedTabbar,
              // indicatorPadding: EdgeInsets.symmetric(horizontal: 12),
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              tabs: [
                Tab(text: 'Leaderboard'),
                Tab(text: 'Rewards'),
                Tab(text: 'Streak'),
                Tab(text: 'MLM'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                LeaderboardScreen(),
                RewardsScreen(),
                StreakScreen(),
                MlmScreen(),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
