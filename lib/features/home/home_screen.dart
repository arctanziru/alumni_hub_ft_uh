import 'package:alumni_hub_ft_uh/common/widgets/bottomBar/bottom_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/card/card_news_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String route = '/home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBarWidget(currentIndex: 0),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red[100],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 48,
            bottom: 16,
          ),
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Uncomment and customize the welcome texts if needed
                // const SizedBox(height: 40),
                // const Text(
                //   'Welcome to Alumni Hub',
                //   style: TextStyle(
                //     fontSize: 24,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                // const SizedBox(height: 16),
                // const Text(
                //   'This is a platform for alumni to connect and collaborate',
                //   style: TextStyle(
                //     fontSize: 16,
                //     fontWeight: FontWeight.w500,
                //   ),
                // ),
                // const SizedBox(height: 16),
                // const Text(
                //   'Get started by joining an event',
                //   style: TextStyle(
                //     fontSize: 16,
                //     fontWeight: FontWeight.w500,
                //   ),
                // ),
                // const SizedBox(height: 16),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: const Text('Join an Event'),
                // ),
                CardNewsWidget(
                  imageUrl:
                      'https://images.unsplash.com/photo-1721332149346-00e39ce5c24f?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  title: 'Event Title',
                  description: 'Event Description',
                  likes: 10,
                  isLiked: false,
                  onLikePressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
