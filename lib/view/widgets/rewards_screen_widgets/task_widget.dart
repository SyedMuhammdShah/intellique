import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:local_package/Models/RewardsModel.dart';

class TaskList extends StatelessWidget {
  TaskList({super.key, required this.tasks});

  List<RewardsModel> tasks;
  // String tasks;
  // int points;


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: AlwaysScrollableScrollPhysics(),
      itemCount: tasks.first.todos!.length,
      itemBuilder:(context, index) {
        return ListTile(
          leading: Icon(Icons.star_border_purple500_sharp, color: Colors.white,),
          title: Text(tasks.first.todos![index].name.toString(), style: TextStyle(color: Colors.white, fontSize: 14),),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(tasks.first.todos![index].estimatedPoints.toString(), style: TextStyle(color: Colors.white,),),
              SizedBox(width: 20,),
              IconButton(icon: Icon(Icons.sd_card_alert_outlined, size: 18,color: Colors.white,),
                onPressed: () {

                showDialog(context: context, builder: (context) {
                  return CupertinoAlertDialog(
                    title: Text("Description"),
                    content: Text(tasks.first.todos![index].description.toString()),
                  );
                },);

              },)
            ],
          ),

        );
      },);
  }
}
