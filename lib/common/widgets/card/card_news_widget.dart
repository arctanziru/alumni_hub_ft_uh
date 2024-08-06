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

  const CardNewsWidget(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.description,
      required this.likes,
      required this.isLiked,
      this.onLikePressed,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 12.2,
              spreadRadius: -5,
              offset: Offset(0, 3),
            )
          ],
        ),
        clipBehavior: Clip.antiAlias,
        height: 160,
        width: double.infinity, // Expand to the width of the parent
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
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
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
