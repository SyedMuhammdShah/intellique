import 'package:flutter/material.dart';
import 'package:local_package/res/colors.dart';

class StreakScreen extends StatelessWidget {
  const StreakScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.whatshot,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      '12',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Current Streak',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '30',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Longest Streak',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Streaks per week',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildDayCircle('Mon', true),
                        _buildDayCircle('Tue', false),
                        _buildDayCircle('Wed', true),
                        _buildDayCircle('Thu', true),
                        _buildDayCircle('Fri', true),
                        _buildDayCircle('Sat', false),
                        _buildDayCircle('Sun', true),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildDayCircle(String day, bool active) {
  return Column(
    children: [
      CircleAvatar(
        radius: 16,
        backgroundColor: active ? Colors.white : Colors.transparent,
        child: Icon(
          Icons.whatshot,
          color: active ? Colors.blue : Colors.white,
          size: 16,
        ),
      ),
      SizedBox(height: 4),
      Text(
        day,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ],
  );
}
