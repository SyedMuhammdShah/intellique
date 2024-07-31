import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:local_package/Models/leaderboard_model.dart';
import 'package:local_package/controller/leaderboard_controller.dart';

class LeaderboardList extends StatefulWidget {
  LeaderboardList({super.key, required this.usersList});
  List<LeaderboardModel> usersList;

  @override
  State<LeaderboardList> createState() => _LeaderboardListState();
}

class _LeaderboardListState extends State<LeaderboardList> {

  List? userList;
  List<LeaderboardModel>? listOfUsers;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // listOfUsers = widget.usersList;
    // List<int> indexesToSkip = [1, 2];
    //
    // List<LeaderboardModel> filteredUsers = listOfUsers!
    //     .asMap()
    //     .entries
    //     .where((entry) => !indexesToSkip.contains(entry.key))
    //     .map((entry) => entry.value)
    //     .toList();
    //
    // log("filteredUsers: $filteredUsers"); // [1, 3, 5]

    // userList = widget.usersList;
    // List indexesToRemove = [0, 1];
    // userList!.retainWhere((index) => indexesToRemove.contains(index),);
    // log(userList!.length.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
            border: BorderDirectional(top: BorderSide(width: 0.3, color: Colors.white),start: BorderSide(width: 0.3, color: Colors.white), end: BorderSide(width: 0.3, color: Colors.white), )
        ),
        child: ListView.builder(
          itemCount: widget.usersList.length,
          itemBuilder: (context, index) {
            final users = widget.usersList[index];
            return ListTile(
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("${index+3}", style: TextStyle(color: Colors.white, fontSize: 14),),
                  SizedBox(width: 10,),
                  CircleAvatar(radius: 18,
                    backgroundImage: AssetImage(users.userImage),),
                    // backgroundImage: AssetImage("assets/images/profile3.png"),),
                ],
              ),
              title: Text(users.userName, style: TextStyle(color: Colors.white, fontSize: 16),),
              trailing: Text(users.userScore.toString(), style: TextStyle(color: Colors.white, fontSize: 14),),
            );
          },),
      ),
    );
  }
}
