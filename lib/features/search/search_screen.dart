import 'package:alumni_hub_ft_uh/common/utils/app_navigation.dart';
import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:alumni_hub_ft_uh/features/news/news_search_screen.dart';
import 'package:alumni_hub_ft_uh/features/search/blocs/search_bloc.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/vacancy_search_screen.dart';
import 'package:alumni_hub_ft_uh/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatefulWidget {
  static const String route = '/search';

  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void initState() {
    context.read<SearchBloc>().add(SearchFetched());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Container(
          height: 35,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1.0),
            borderRadius: BorderRadius.circular(40.0),
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
                        vertical: 14, horizontal: 8.0),
                  ),
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.black),
                  onSubmitted: (value) {
                    context.read<SearchBloc>().add(SearchQueryChanged(value));
                  },
                  controller: TextEditingController(
                      text: context.read<SearchBloc>().state.searchQuery),
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
      body: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                SearchResultSection(
                  title: 'BERITA',
                  count: state.search?.data.berita ?? 0,
                  isLoading: state.status == SearchStatus.loading,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewsSearchScreen(
                                searchQuery: state.searchQuery!,
                              )),
                    );
                  },
                ),
                const SizedBox(height: 16),
                SearchResultSection(
                  title: 'LOKER',
                  count: state.search?.data.loker ?? 0,
                  isLoading: state.status == SearchStatus.loading,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VacancySearchScreen(
                                searchQuery: state.searchQuery!,
                              )),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class SearchResultSection extends StatelessWidget {
  final String title;
  final int count;
  final VoidCallback onTap;
  final bool isLoading;

  const SearchResultSection(
      {super.key,
      required this.title,
      required this.count,
      required this.onTap,
      this.isLoading = false});

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            isLoading
                ? const SizedBox(
                    height: 16,
                    width: 16,
                    child: CircularProgressIndicator(
                      color: AppColors.primaryColor,
                      strokeWidth: 1,
                    ),
                  )
                : Text('$count Ditemukan',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: isHighlighted
                            ? AppColors.primaryBlack
                            : Colors.grey[600])),
            const SizedBox(width: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(title,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: isHighlighted
                            ? AppColors.primaryBlack
                            : Colors.grey[600])),
                Icon(
                  Icons.chevron_right,
                  size: 18,
                  color:
                      isHighlighted ? AppColors.primaryBlack : Colors.grey[600],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
