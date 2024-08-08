import 'package:alumni_hub_ft_uh/common/utils/numbers.dart';
import 'package:flutter/material.dart';

class CardNewsWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final double likes;
  final bool isLiked;
  final VoidCallback? onLikePressed;
  final VoidCallback? onTap;

  const CardNewsWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.likes,
    required this.isLiked,
    this.onLikePressed,
    this.onTap,
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
              blurRadius: 15, // Menambahkan efek blur
              spreadRadius: 0,
              offset: const Offset(0, 4), // Mengatur jarak shadow
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 25, // Menambahkan efek blur yang lebih halus
              spreadRadius: 0,
              offset: const Offset(0, 8), // Mengatur jarak shadow kedua
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        height: 160,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              imageUrl,
              width: 96,
              height: 160,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          description,
                          style: const TextStyle(
                            fontSize: 12,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 3,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          ShortenNumber.shorten(likes),
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: isLiked ? Colors.red : Colors.grey,
                          ),
                          onPressed: onLikePressed,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
