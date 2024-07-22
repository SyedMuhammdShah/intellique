import 'package:flutter/material.dart';
import 'package:local_package/res/colors.dart';

class BottomSheetWithTabs extends StatefulWidget {
  @override
  _BottomSheetWithTabsState createState() => _BottomSheetWithTabsState();
}

class _BottomSheetWithTabsState extends State<BottomSheetWithTabs> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // Adjust the length to the number of tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Column(
        children: [
          TabBar(
            labelColor: Colors.white,
            overlayColor: WidgetStatePropertyAll(AppColors.unfocusedTabbar),
            controller: _tabController,
            tabs: [
              Tab(text: 'Tab 1',),
              Tab(text: 'Tab 2'),
              Tab(text: 'Tab 3'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Center(child: Text('Content for Tab 1')),
                Center(child: Text('Content for Tab 2')),
                Center(child: Text('Content for Tab 3')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}