import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/bottomBar/bottom_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:flutter/material.dart';

class VacancyScreen extends StatefulWidget {
  static const String route = '/vacancy'; // Updated the route to match the new screen name

  const VacancyScreen({super.key});

  @override
  State<VacancyScreen> createState() => _VacancyScreenState(); // Ensure this matches the new state class name
}

class _VacancyScreenState extends State<VacancyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      bottomNavigationBar: const BottomBarWidget(currentIndex: 3),
      body: SafeArea(
        child: Column(
          children: [
            // Your widgets go here
            Text('Vacancy Screen'), // Updated text to match the new screen name
            // Example button
            ButtonWidget(label: 'Example Button', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
