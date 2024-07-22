import 'package:flutter/material.dart';
import 'package:local_package/res/colors.dart';

import 'widgets/tabbar.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet<void>(
          isScrollControlled: true,
          backgroundColor: AppColors.mainColor,
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  BottomSheetWithTabs()

                ],
              ),
            );
          },
        );
      },
      child: Icon(Icons.add, color: AppColors.mainColor,
      size: 36,
      ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
