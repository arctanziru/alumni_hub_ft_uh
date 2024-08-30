import 'package:alumni_hub_ft_uh/common/utils/date_util.dart';
import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:flutter/material.dart';

class CardVacancyWidget extends StatelessWidget {
  final String title;
  final String company;
  final String type;
  final String location;
  final String experience;
  final DateTime postedAt;
  final DateTime endDate;
  final String description;
  final String companyImgUrl;
  final VoidCallback onTap;

  const CardVacancyWidget({
    super.key,
    required this.title,
    required this.company,
    required this.type,
    required this.location,
    required this.experience,
    required this.postedAt,
    required this.endDate,
    required this.description,
    required this.companyImgUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8, // Menambahkan efek blur
              spreadRadius: 0,
              offset: const Offset(0, 4), // Mengatur jarak shadow
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 16, // Menambahkan efek blur yang lebih halus
              spreadRadius: 0,
              offset: const Offset(0, 8), // Mengatur jarak shadow kedua
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    companyImgUrl,
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.error),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.titleSmall,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        company,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Divider(
              color: AppColors.gray1,
            ),
            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: [
                _buildInfoRow(
                  icon: Icons.work,
                  text: type,
                  context: context,
                ),
                _buildInfoRow(
                  icon: Icons.location_on,
                  text: location,
                  context: context,
                ),
                _buildInfoRow(
                  icon: Icons.access_time,
                  text: '$experience tahun',
                  context: context,
                ),
                _buildInfoRow(
                    context: context,
                    icon: Icons.calendar_today,
                    text: DateUtil.getDaysLeft(endDate)),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              description,
              style: Theme.of(context).textTheme.bodySmall,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required String text,
    required BuildContext context,
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
