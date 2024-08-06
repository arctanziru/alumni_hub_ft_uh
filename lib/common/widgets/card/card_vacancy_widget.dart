import 'package:flutter/material.dart';

class CardVacancyWidget extends StatelessWidget {
  final String title;
  final String company;
  final String type;
  final String location;
  final String experience;
  final DateTime postedAt;
  final String description;
  final String companyImgUrl;

  const CardVacancyWidget(
      {super.key,
      required this.title,
      required this.company,
      required this.type,
      required this.location,
      required this.experience,
      required this.postedAt,
      required this.description,
      required this.companyImgUrl});

  @override
  Widget build(BuildContext context) {
    final daysLeft = DateTime.now().difference(postedAt).inDays;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.2),
            blurRadius: 4,
            offset: Offset(0, 4),
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
                  'https://via.placeholder.com/50',
                  fit: BoxFit.cover,
                  width: 21,
                  height: 21,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.error),
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    company,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Divider(),
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
                text: experience,
                context: context,
              ),
              _buildInfoRow(
                icon: Icons.calendar_today,
                text: '$daysLeft days',
                context: context,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            description,
            style: Theme.of(context).textTheme.bodyMedium,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ],
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
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey,
              fontSize: 10
                ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
