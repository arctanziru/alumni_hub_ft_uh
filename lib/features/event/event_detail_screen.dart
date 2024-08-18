import 'package:alumni_hub_ft_uh/common/utils/date_util.dart';
import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_search_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/bottomBar/bottom_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:alumni_hub_ft_uh/features/event/bloc/event_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:skeletonizer/skeletonizer.dart';

class EventDetailScreen extends StatefulWidget {
  static const String route = '/eventDetail';
  final int eventId;

  const EventDetailScreen({super.key, required this.eventId});

  @override
  State<EventDetailScreen> createState() => _EventDetailScreenState();
}

class _EventDetailScreenState extends State<EventDetailScreen> {
  @override
  void initState() {
    super.initState();
    context.read<EventBloc>().add(EventGetOne(widget.eventId));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarSearchWidget(),
      bottomNavigationBar: const BottomBarWidget(),
      body: BlocBuilder<EventBloc, EventState>(
        builder: (context, state) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 24),
                Text(
                  'Event',
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: AppColors.primaryColor),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 6),
                Skeletonizer(
                  enabled: state.selectedEventStatus == EventStatus.loading &&
                      state.selectedEvent == null,
                  child: Text(
                    state.selectedEvent?.judul ?? '',
                    style: Theme.of(context).textTheme.titleLarge,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 6),
                Skeletonizer(
                  enabled: state.selectedEventStatus == EventStatus.loading &&
                      state.selectedEvent == null,
                  child: Text(
                    state.selectedEvent?.penyelenggara ?? '',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: const Color(0xFF606060),
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 6),
                Skeletonizer(
                  enabled: state.selectedEventStatus == EventStatus.loading &&
                      state.selectedEvent == null,
                  child: Text(
                    state.selectedEvent != null &&
                            state.selectedEvent?.tglEvent != null
                        ? DateUtil.getFormattedDate(
                            state.selectedEvent!.tglEvent)
                        : '',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: const Color(0xFF606060),
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 24),
                        Skeletonizer(
                            enabled: state.selectedEventStatus ==
                                    EventStatus.loading &&
                                state.selectedEvent == null,
                            child: Image.network(
                              '${dotenv.env['STORAGE_URL']}${state.selectedEvent?.gambar ?? ''}',
                              errorBuilder: (context, error, stackTrace) =>
                                  Container(
                                height: 200,
                                color: Colors.grey[200],
                                child: const Center(
                                    child: Icon(Icons.error,
                                        size: 40, color: Colors.grey)),
                              ),
                            )),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Skeletonizer(
                              enabled: state.selectedEventStatus ==
                                      EventStatus.loading &&
                                  state.selectedEvent == null,
                              child: ButtonWidget(
                                label:
                                    '${state.selectedEvent?.peserta ?? 0}/${state.selectedEvent?.kuota ?? 0}',
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            ButtonWidget(
                                label: state.selectedEvent?.isRegistered == true
                                    ? 'Batal Daftar'
                                    : 'Daftar',
                                onPressed: () {
                                  context
                                      .read<EventBloc>()
                                      .add(EventToggleRegister(widget.eventId));
                                },
                                isLoading: state.selectedEventStatus ==
                                        EventStatus.loading &&
                                    state.selectedEvent == null,
                                disabled: state.selectedEvent == null ||
                                    (state.selectedEvent?.isRegistered ==
                                            false &&
                                        state.selectedEvent!.peserta >=
                                            state.selectedEvent!.kuota)),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Skeletonizer(
                            enabled: state.selectedEventStatus ==
                                    EventStatus.loading &&
                                state.selectedEvent == null,
                            child: HtmlWidget(
                              state.selectedEvent?.konten ?? '',
                              textStyle: Theme.of(context).textTheme.bodyMedium,
                            )),
                        const SizedBox(height: 16),
                        Skeletonizer(
                          enabled: state.selectedEventStatus ==
                                  EventStatus.loading &&
                              state.selectedEvent == null,
                          child: Text(
                            'Lokasi: ${state.selectedEvent?.lokasiEvent}',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Skeletonizer(
                            enabled: state.selectedEventStatus ==
                                    EventStatus.loading &&
                                state.selectedEvent == null,
                            child: Text(
                              'Kuota: ${state.selectedEvent?.kuota ?? 0} Peserta',
                              style: Theme.of(context).textTheme.bodyLarge,
                            )),
                      ],
                    )),
              ],
            ),
          );
        },
      ),
    );
  }
}
