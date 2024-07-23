import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:local_package/Models/RewardsModel.dart';

class TaskController {


 Future<List<RewardsModel>> getTasks() async{
    var response = await http.get(Uri.parse('http://192.168.100.25:6000/api/todos?userid=1471607316667580421'));
    final jsonData = jsonDecode(response.body).cast<Map<String, dynamic>>();
    print("Response: ${response.body}");
    print("jsonData: $jsonData");


    if (response.statusCode == 200) {

      return taskList(response.body);
    }
    else {
      // print(response.reasonPhrase);
      throw Exception('Failed to load data');
    }
  }

 List<RewardsModel> taskList(String responseBody) {
   final task = json.decode(responseBody).cast<Map<String, dynamic>>();
   return task.map<RewardsModel>((json) => RewardsModel.fromJson(json)).toList();
 }


}