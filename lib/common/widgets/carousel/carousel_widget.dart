import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeCarouselWidget extends StatelessWidget {
  final List<String> carouselItems;
  final List<String> countdownTexts;
  final List<String> registrantsInfo;

  const HomeCarouselWidget({
    super.key,
    required this.carouselItems,
    required this.countdownTexts,
    required this.registrantsInfo,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle bodySmallStyle = Theme.of(context).textTheme.bodySmall!;

    return CarouselSlider.builder(
      itemCount: carouselItems.length,
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 1.0,
        enlargeCenterPage: false,
        aspectRatio: 16 / 9,
      ),
      itemBuilder: (BuildContext context, int index, int realIndex) {
        String imageUrl = carouselItems[index];
        String countdownText = countdownTexts[index];
        String registrantsText = registrantsInfo[index];

        final parts = countdownText.split(' ');
        final numberPart = parts[0];
        final textPart = parts.skip(1).join(' ');

        return Stack(
          fit: StackFit.expand,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.network(
                    imageUrl,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(Icons.error);
                    },
                  ).image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 16.0,
              left: 16.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Container for countdown number and text with fixed size for red background
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: AppColors
                          .primaryColor, // Black background with low opacity
                      borderRadius:
                          BorderRadius.circular(8.0), // Rounded corners
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            numberPart,
                            style: bodySmallStyle.copyWith(
                              fontSize: 24.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          textPart,
                          style: bodySmallStyle.copyWith(
                            fontSize: 12.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center, // Center-align the text
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 16.0,
              top: 16.0,
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFD80100).withOpacity(0.9),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Center(
                  child: Text(
                    registrantsText,
                    style: bodySmallStyle.copyWith(
                      fontSize: 10.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
