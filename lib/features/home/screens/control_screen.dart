import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/size_manager.dart';
import '../../state/screens/state_page.dart';
import '../widgets/custom_bottom_navigation_bar.dart';
import 'home_page.dart';

class ControlScreen extends StatefulWidget {
  const ControlScreen({super.key});

  @override
  State<ControlScreen> createState() => _ControlScreenState();
}

class _ControlScreenState extends State<ControlScreen> {
  int index = 0;
  List<Widget> w = const [
    HomePage(),
    StatePage(),
  ];

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CustomBottomNavigationBar(
        onPressedHome: () {
          index = 0;
          setState(() {});
        },
        onPressedStats: () {
          index = 1;
          setState(() {});
        },
        widthScreen: widthScreen,
      ),
      body: w[index],
      appBar: index == 0
          ? AppBar(
              centerTitle: true,
              title: const Text(AppStrings.titleHomePage),
              backgroundColor: Colors.transparent,
            )
          : index == 1
              ? AppBar(
                  actions: const [
                    Padding(
                      padding: EdgeInsets.only(right: PaddingValues.p14),
                      child: Icon(Icons.more_horiz),
                    )
                  ],
                  centerTitle: true,
                  title: const Text(AppStrings.stats),
                  backgroundColor: Colors.transparent,
                )
              : AppBar(
                  title: const Text("null"),
                ),
      backgroundColor: AppColors.kColorPrimary,
    );
  }
}
