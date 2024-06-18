import 'package:attendence/attendance_app/screens/home/home_page.dart';
import 'package:attendence/attendance_app/screens/salary/salary_page.dart';
import 'package:attendence/attendance_app/screens/settings/settings_page.dart';
import 'package:attendence/attendance_app/style/color.dart';
import 'package:flutter/material.dart';


class MyBottomBar extends StatefulWidget {
  const MyBottomBar({super.key});

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int index = 0;

  final screen = [
    const HomePage(),
    const SalaryPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            labelTextStyle: WidgetStateProperty.resolveWith<TextStyle?>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.selected)) {
                  return const TextStyle(
                      color: AppColors.primary500, fontWeight: FontWeight.bold);
                }
                return const TextStyle(color: Colors.grey);
              },
            ),
            indicatorColor: Colors.transparent),
        child: NavigationBar(
          backgroundColor: Colors.white,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          animationDuration: const Duration(seconds: 1),
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_filled),
              label: "Home",
              selectedIcon: Icon(
                Icons.home_filled,
                color: AppColors.primary500,
              ),
            ),
            NavigationDestination(
              icon: Icon(Icons.currency_rupee),
              label: "Salary",
              selectedIcon: Icon(Icons.currency_rupee, color: AppColors.primary500),
            ),
            NavigationDestination(
              icon: Icon(Icons.settings_outlined),
              label: "Settings",
              selectedIcon: Icon(Icons.settings_outlined, color: AppColors.primary500),
            ),
          ],
        ),
      ),
      body: screen[index],
    );
  }
}
