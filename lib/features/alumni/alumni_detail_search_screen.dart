import 'package:alumni_hub_ft_uh/common/utils/app_navigation.dart';
import 'package:alumni_hub_ft_uh/features/alumni/bloc/alumni_bloc.dart';
import 'package:alumni_hub_ft_uh/features/alumni/domain/models/alumni_get_many_model.dart';
import 'package:alumni_hub_ft_uh/locator.dart';
import 'package:flutter/material.dart';
import 'package:alumni_hub_ft_uh/common/widgets/card/card_alumni_profile_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../common/widgets/appBar/app_bar_secondary_widget.dart';
import 'alumni_profile_detail_screen.dart'; // Import your CardAlumniProfileWidget // Import the AlumniProfileDetailScreen

class AlumniDetailSearchScreen extends StatefulWidget {
  static const String route = '/alumniDetailSearch';
  final AlumniGetManyParams alumniGetManyParams;

  const AlumniDetailSearchScreen(
      {required this.alumniGetManyParams, super.key});

  @override
  State<AlumniDetailSearchScreen> createState() =>
      _AlumniDetailSearchScreenState();
}

class _AlumniDetailSearchScreenState extends State<AlumniDetailSearchScreen> {
  @override
  void initState() {
    super.initState();
    context
        .read<AlumniGetManyBloc>()
        .add(AlumniEventGetMany(widget.alumniGetManyParams));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context
        .read<AlumniGetManyBloc>()
        .add(AlumniEventGetMany(widget.alumniGetManyParams));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSecondaryWidget(
        title: widget.alumniGetManyParams.jurusan,
        subtitle: widget.alumniGetManyParams.search != null
            ? 'Search: ${widget.alumniGetManyParams.search}'
            : null,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: BlocBuilder<AlumniGetManyBloc, AlumniState>(
                  builder: (context, state) {
                    if (state is AlumniGetManyError) {
                      debugPrint('Error: ${state.message}');
                      return Center(
                        child: Text('Error: ${state.message}'),
                      );
                    }

                    if (state is AlumniGetManySuccess &&
                        state.alumniGetManyResponse.data.isNotEmpty) {
                      return RefreshIndicator(
                        onRefresh: () async {
                          context.read<AlumniGetManyBloc>().add(
                              AlumniEventGetMany(widget.alumniGetManyParams));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ListView.builder(
                                itemCount:
                                    state.alumniGetManyResponse.data.length,
                                itemBuilder: (context, index) {
                                  final alumni =
                                      state.alumniGetManyResponse.data[index];
                                  return Column(
                                    children: [
                                      CardAlumniProfileWidget(
                                        name: alumni.nama,
                                        details:
                                            '${alumni.jurusan} - ${alumni.angkatan}',
                                        onTap: () {
                                          locator<AppNavigation>().navigateTo(
                                              AlumniProfileDetailScreen.route,
                                              arguments: alumni);
                                        },
                                      ),
                                      const SizedBox(height: 10),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    }

                    if (state is AlumniGetManySuccess &&
                        state.alumniGetManyResponse.data.isEmpty) {
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
                          return const CardAlumniProfileWidget(
                            name: 'Ahmad Sultani',
                            details: 'D121211080',
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
