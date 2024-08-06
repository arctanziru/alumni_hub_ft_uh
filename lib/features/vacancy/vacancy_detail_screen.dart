import 'package:alumni_hub_ft_uh/common/utils/date_util.dart';
import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/bottomBar/bottom_bar_widget.dart';
import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/domain/vacancy_model.dart';
import 'package:flutter/material.dart';

class VacancyDetailScreen extends StatefulWidget {
  final VacancyModel vacancy;

  const VacancyDetailScreen({
    super.key,
    required this.vacancy,
  });

  @override
  State<VacancyDetailScreen> createState() => _VacancyDetailScreenState();
}

class _VacancyDetailScreenState extends State<VacancyDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      bottomNavigationBar: const BottomBarWidget(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 24),
            Text(
              'Lowongan Kerja',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(color: AppColors.primaryColor),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 6),
            Text(
              widget.vacancy.title,
              style: Theme.of(context).textTheme.titleLarge,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 6),
            Text(
              widget.vacancy.company,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: const Color(0xFF606060),
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 6),
            Text(
              '${DateTime.fromMicrosecondsSinceEpoch(widget.vacancy.createdAt)}',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: const Color(0xFF606060),
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 6),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 14,
                children: [
                  _buildInfoChip(
                    context: context,
                    icon: Icons.location_on,
                    text: widget.vacancy.location,
                  ),
                  _buildInfoChip(
                    context: context,
                    icon: Icons.access_time,
                    text: widget.vacancy.experience,
                  ),
                  _buildInfoChip(
                    context: context,
                    icon: Icons.calendar_today,
                    text:
                        '${DateUtil.getDaysAgo(DateTime.fromMillisecondsSinceEpoch(widget.vacancy.createdAt))} days ago',
                  ),
                ],
              ),
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
                      widget.vacancy.backgroundUrl,
                      errorBuilder: (context, error, stackTrace) => Container(
                        height: 200,
                        color: Colors.grey[200],
                        child: const Center(
                            child: Icon(Icons.error,
                                size: 40, color: Colors.grey)),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Requirements:',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 8),
                    ...widget.vacancy.requirements.map((req) => Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('• ', style: TextStyle(fontSize: 18)),
                              Expanded(
                                child: Text(
                                  req,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                            ],
                          ),
                        )),
                    const SizedBox(height: 16),
                    Text(
                      widget.vacancy.description,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoChip({
    required BuildContext context,
    required IconData icon,
    required String text,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: Colors.grey),
        const SizedBox(width: 4),
        Flexible(
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: Colors.grey, fontSize: 10),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
