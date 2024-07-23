import 'package:flutter/material.dart';

class LeaderboardList extends StatelessWidget {
  const LeaderboardList({super.key});

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
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("${index+3}", style: TextStyle(color: Colors.white, fontSize: 16),),
                  SizedBox(width: 10,),
                  CircleAvatar(radius: 18,),
                ],
              ),
              title: Text("Agenes Jones", style: TextStyle(color: Colors.white, fontSize: 16),),
              trailing: Text("334", style: TextStyle(color: Colors.white, fontSize: 14),),
            );
          },),
      ),
    );
  }
}
