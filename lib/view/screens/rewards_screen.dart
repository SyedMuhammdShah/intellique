import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:local_package/Models/RewardsModel.dart';
import 'package:local_package/controller/task_controller.dart';
import 'package:local_package/res/colors.dart';
import 'package:local_package/view/widgets/rewards_screen_widgets/task_widget.dart';
import 'package:percent_indicator/percent_indicator.dart';

class RewardsScreen extends StatefulWidget {
  const RewardsScreen({super.key});

  @override
  State<RewardsScreen> createState() => _RewardsScreenState();
}

class _RewardsScreenState extends State<RewardsScreen> {

  TaskController tasks = TaskController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tasks.getTasks().then((value) {
      log(value.first.userId.toString());
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  textAlign: TextAlign.center,
                  "Earn Rewards by completing \n these Tasks",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: Text(
                        textAlign: TextAlign.left,
                        "Tasks Completed",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                      LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width * 0.8,
                      lineHeight: 8.0,
                      percent: 0.75,
                      progressColor: Colors.blue,

                                        ),
                    SizedBox(height: 10,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Task", style: TextStyle(color: Colors.white, fontSize: 14),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Points", style: TextStyle(color: Colors.white, fontSize: 14),),
                              SizedBox(width: 10,),
                              Text("Actions", style: TextStyle(color: Colors.white, fontSize: 14),),
                            ],
                          )
                        ],
                      ),
                    ),

                    SizedBox(height: 10,),
                    
                    FutureBuilder<List<RewardsModel>>(
                        future: tasks.getTasks(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState == ConnectionState.waiting) {
                          return CircularProgressIndicator();
                          } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                          } else if (snapshot.hasData) {
                          final data = snapshot.data!;
                          return TaskList(tasks: data);
                        }
                          else{
                            return Text("No data");
                          }
                          },),


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}