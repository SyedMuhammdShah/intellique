import 'package:flutter/material.dart';
import 'package:intellique/src/res/colors.dart';

import 'widgets/tabbar.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {

          // UserController userController = UserController();
          // userController.getUser().then((value) {
          //   print(value.user!.streaks!.count.toString());
          // },);

        showModalBottomSheet<void>(
          isScrollControlled: true,
          backgroundColor: AppColors.mainColor,
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(170)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  BottomSheetWithTabs(),

                ],
              ),
            );
          },
        );


      },
        child: Image.asset("assets/icons/star.png", width: 80, height: 40,),
        backgroundColor: Colors.transparent,
        elevation: 0,
      );
  }
}
