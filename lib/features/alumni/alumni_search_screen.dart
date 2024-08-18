import 'package:alumni_hub_ft_uh/common/utils/app_navigation.dart';
import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_secondary_widget.dart';
import 'package:alumni_hub_ft_uh/features/alumni/bloc/alumni_bloc.dart';
import 'package:alumni_hub_ft_uh/features/alumni/domain/models/alumni_get_many_model.dart';
import 'package:alumni_hub_ft_uh/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../common/widgets/card/card_alumni_widget.dart'; // Import your CardAlumniWidget
import 'package:alumni_hub_ft_uh/features/alumni/alumni_detail_search_screen.dart';

class AlumniSearchScreen extends StatefulWidget {
  static const String route = '/alumniSearch';
  final AlumniJurusanParams alumniJurusanParams;

  const AlumniSearchScreen({super.key, required this.alumniJurusanParams});

  @override
  State<AlumniSearchScreen> createState() => _AlumniSearchScreenState();
}

class _AlumniSearchScreenState extends State<AlumniSearchScreen> {
  @override
  void initState() {
    super.initState();
    context
        .read<AlumniJurusanBloc>()
        .add(AlumniEventGetJurusan(widget.alumniJurusanParams));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSecondaryWidget(
        title: 'Angkatan ${widget.alumniJurusanParams.angkatan}',
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<AlumniJurusanBloc, AlumniState>(
            builder: (context, state) {
              if (state is AlumniJurusanError) {
                debugPrint('Error: ${state.message}');
                return Center(
                  child: Text('Error: ${state.message}'),
                );
              }

              if (state is AlumniJurusanSuccess &&
                  state.alumniJurusanResponse.data.isNotEmpty) {
                return RefreshIndicator(
                  onRefresh: () async {
                    context
                        .read<AlumniJurusanBloc>()
                        .add(AlumniEventGetJurusan(widget.alumniJurusanParams));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ListView.separated(
                          itemCount: state.alumniJurusanResponse.data.length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 10),
                          itemBuilder: (context, index) {
                            final jurusan =
                                state.alumniJurusanResponse.data[index];
                            return CardAlumniWidget(
                              label: jurusan.jurusan,
                              subtitle: '${jurusan.total} Alumni',
                              onTap: () {
                                debugPrint('Navigating to Jurusan: ${jurusan.jurusan}');
                                locator<AppNavigation>().navigateTo(
                                  AlumniDetailSearchScreen.route,
                                  arguments: AlumniGetManyParams(
                                    angkatan:
                                        widget.alumniJurusanParams.angkatan,
                                    jurusan: jurusan.jurusan,
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              }

              if (state is AlumniJurusanSuccess &&
                  state.alumniJurusanResponse.data.isEmpty) {
                return const Center(
                  child: Text('Data tidak ditemukan'),
                );
              }

              return Skeletonizer(
                child: ListView.separated(
                  itemCount: 10,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    return const CardAlumniWidget(
                      label: 'Teknik Informatika',
                      subtitle: '100 Alumni',
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
