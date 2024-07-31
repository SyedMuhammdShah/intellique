import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:local_package/Models/leaderboard_model.dart';
import 'package:local_package/controller/leaderboard_controller.dart';
import 'package:local_package/view/widgets/leaderboard_list.dart';
import 'package:local_package/view/widgets/toppers_widget.dart';

class LeaderboardScreen extends StatefulWidget {
  LeaderboardScreen({super.key, required this.api});
  String api;

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen>{

  LeaderboardController _leaderboardController = LeaderboardController();
  List<LeaderboardModel> listOfUsers = [];
  List<LeaderboardModel> filteredUsers = [];

  Future<void> getUsers() async {
    listOfUsers.clear();
    filteredUsers.clear();
    await _leaderboardController.fetchUsers(widget.api);
    sortList();
    removeToppersFromList();
  }

  sortList(){
    final userList = _leaderboardController.users;
    userList.sort((a, b) => b.userScore.compareTo(a.userScore));

    // Print sorted users to verify
    for (var user in userList) {
      listOfUsers.add(user);
      // print('${user.userName}: ${user.userScore}');
    }
    log('${listOfUsers.length}');
  }

  removeToppersFromList(){
    final usersList = _leaderboardController.filteredUsers;
    usersList.sort((a, b) => b.userScore.compareTo(a.userScore));

    // Print sorted users to verify
    for (var user in usersList) {
      filteredUsers.add(user);
    }
    filteredUsers.removeRange(0, 3);
    log('${filteredUsers.length}');
  }


  @override
  Widget build(BuildContext context) {
    final user = _leaderboardController.users;
    return FutureBuilder(
      future: getUsers(),
        builder: (context, snapshot) {
          // log("Length=> ${user.length.toString()}");
          return Column(
            children: [
              ToppersWidget(first: listOfUsers.first ,second: listOfUsers[1],third: listOfUsers[2],),
              LeaderboardList(usersList: filteredUsers,)
            ],
          );
        },);
  }
}
