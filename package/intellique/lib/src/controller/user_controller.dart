import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intellique/src/Models/user_model.dart';


class UserController{


  Future<UserModel> getUser() async {
    String userId = "669fedde2e05daa6c7ceaee9";
    // var request = http.Request('GET', Uri.parse('http://192.168.100.25:6000/api/user/get-user/$userId'));
    // http.StreamedResponse response = await request.send();


    var response = await http.get(Uri.parse('http://192.168.100.25:6000/api/user/get-user/$userId'));
    final jsonData = jsonDecode(response.body);
    UserModel user = UserModel.fromJson(jsonData);


    if (response.statusCode == 200) {
      print(await response.body);
      return user;
    }
    else {
    print(response.reasonPhrase);
    throw Exception('Failed to load data');
    }

  }

}