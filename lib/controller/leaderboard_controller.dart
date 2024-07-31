import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:local_package/Models/leaderboard_model.dart';

class LeaderboardController {

  List<LeaderboardModel> _users = [];
  List<LeaderboardModel> _filteredUsers = [];

  Future<void> fetchUsers(String api) async {
    try {
      final response = await rootBundle.loadString(api);
      final List<dynamic> data = jsonDecode(response);
      _users = data.map((json) => LeaderboardModel.fromJson(json)).toList();
      _filteredUsers = data.map((json) => LeaderboardModel.fromJson(json)).toList();
      print("Users Fetched");
      log(_users.first.userName);
    } catch (e) {
      print('Error fetching users: $e');
    }
  }

  List<LeaderboardModel> get users => _users;
  List<LeaderboardModel> get filteredUsers => _filteredUsers;
}