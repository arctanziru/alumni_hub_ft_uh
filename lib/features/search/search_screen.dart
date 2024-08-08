import 'package:alumni_hub_ft_uh/common/utils/app_navigation.dart';
import 'package:alumni_hub_ft_uh/features/news/news_search_screen.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/vacancy_search_screen.dart';
import 'package:alumni_hub_ft_uh/locator.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  static const String route = '/search';

  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false, // Remove the back button
        title: Container(
          height: 35,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
            border: Border.all(
                color: Colors.black, width: 1.0), // Outline color and width
            borderRadius: BorderRadius.circular(40.0), // Rounded corners
          ),
          child: Row(
            children: [
              const Icon(Icons.search, color: Colors.black),
              Expanded(
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.black54),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal:
                            8.0), // Adjust height and horizontal padding
                  ),
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.close, color: Colors.black),
            onPressed: () {
              locator<AppNavigation>().goBack();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SearchResultSection(
              title: 'BERITA',
              count: 4,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const NewsSearchScreen()), // Ganti NewsSearchScreen dengan widget yang sesuai
                );
              },
            ),
            const SizedBox(height: 16),
            SearchResultSection(
              title: 'LOKER',
              count: 2,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const VacancySearchScreen()), // Navigate to VacancyScreen
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SearchResultSection extends StatelessWidget {
  final String title;
  final int count;
  final VoidCallback onTap;

  const SearchResultSection(
      {super.key,
      required this.title,
      required this.count,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    bool isHighlighted = count > 0;

    return InkWell(
      onTap: isHighlighted ? onTap : null, // Enable tap only if count > 0
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: isHighlighted ? Colors.white : Colors.grey[300],
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isHighlighted ? Colors.black : Colors.transparent,
            width: 1,
          ),
          boxShadow: [
            if (isHighlighted)
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$count Ditemukan',
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 16),
            ),
            const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
