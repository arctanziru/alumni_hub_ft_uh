import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/bottomBar/bottom_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  static const String route = '/news';

  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState(); // Ensure this matches the state class name
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      bottomNavigationBar: const BottomBarWidget(currentIndex: 1),
      body: SafeArea(
        child: Column(
          children: [
            // Your widgets go here
            Text('News Screen'),
            // Example button
            ButtonWidget(label: 'Example Button', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
