import 'package:alumni_hub_ft_uh/common/utils/date_util.dart';
import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_search_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/bottomBar/bottom_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:alumni_hub_ft_uh/features/event/bloc/event_bloc.dart';
import 'package:alumni_hub_ft_uh/features/event/domain/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class EventDetailScreen extends StatefulWidget {
  final EventModel event;

  const EventDetailScreen({
    super.key,
    required this.event,
  });

  @override
  State<EventDetailScreen> createState() => _EventDetailScreenState();
}

class _EventDetailScreenState extends State<EventDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarSearchWidget(),
      bottomNavigationBar: const BottomBarWidget(),
      body: SingleChildScrollView(
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
            Text(
              widget.event.judul,
              style: Theme.of(context).textTheme.titleLarge,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 6),
            Text(
              widget.event.penyelenggara,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: const Color(0xFF606060),
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 6),
            Text(
              DateUtil.getFormattedDate(widget.event.tglEvent),
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: const Color(0xFF606060),
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    Image.network(
                      '${dotenv.env['STORAGE_URL']}${widget.event.gambar}',
                      errorBuilder: (context, error, stackTrace) => Container(
                        height: 200,
                        color: Colors.grey[200],
                        child: const Center(
                            child: Icon(Icons.error,
                                size: 40, color: Colors.grey)),
                      ),
                    ),
                    const SizedBox(height: 16),
                    BlocBuilder<EventBloc, EventState>(
                      builder: (context, state) {
                        return ButtonWidget(
                          label: 'Daftar',
                          onPressed: () {
                            context.read<EventBloc>().add(
                                  EventRegister(widget.event.idEvent),
                                );
                          },
                          isLoading: state.status == EventStatus.loading,
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    HtmlWidget(
                      widget.event.konten,
                      textStyle: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Lokasi: ${widget.event.lokasiEvent}',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Kuota: ${widget.event.kuota} Peserta',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
