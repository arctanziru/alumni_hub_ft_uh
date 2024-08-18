import 'package:alumni_hub_ft_uh/features/event/bloc/event_bloc.dart';
import 'package:alumni_hub_ft_uh/features/event/event_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_search_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/bottomBar/bottom_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/card/card_event_widget.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:skeletonizer/skeletonizer.dart';

class EventScreen extends StatefulWidget {
  static const String route = '/events';

  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<EventBloc>().add(EventFetched());
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent) {
        context.read<EventBloc>().add(EventNextPage());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarSearchWidget(),
      bottomNavigationBar: const BottomBarWidget(), // Adjust index if needed
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Daftar Event',
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Expanded(
                child: BlocBuilder<EventBloc, EventState>(
                  builder: (context, state) {
                    if (state.status == EventStatus.error) {
                      return Center(
                        child: Text(state.error?.message ?? ''),
                      );
                    }

                    if (state.status == EventStatus.loading &&
                        state.events.isEmpty) {
                      return Skeletonizer(
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                CardEventWidget(
                                  onTap: () {},
                                  title: 'Loading...',
                                  location: 'Loading...',
                                  date: DateTime.now(),
                                  description: 'Loading...' * 10,
                                  imageUrl: 'Loading...',
                                  peserta: 0,
                                  kuota: 0,
                                ),
                                const SizedBox(height: 10),
                              ],
                            );
                          },
                        ),
                      );
                    }

                    return RefreshIndicator(
                      onRefresh: () {
                        return Future.delayed(
                          Duration.zero,
                          () {
                            context.read<EventBloc>().add(EventRefreshed());
                          },
                        );
                      },
                      child: state.events.isEmpty
                          ? Center(
                              child: Text(
                                'Tidak ada event',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            )
                          : ListView.builder(
                              controller: _scrollController,
                              itemCount: state.events.length,
                              itemBuilder: (context, index) {
                                final event = state.events[index];
                                return Column(
                                  children: [
                                    CardEventWidget(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                EventDetailScreen(
                                              eventId: event.idEvent,
                                            ),
                                          ),
                                        );
                                      },
                                      title: event.judul,
                                      location: event.lokasiEvent,
                                      date: event.tglEvent,
                                      description: event.konten,
                                      imageUrl:
                                          '${dotenv.get('STORAGE_URL')}${event.gambar}',
                                      peserta: event.peserta,
                                      kuota: event.kuota,
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                );
                              },
                            ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
