import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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

        return Stack(
          fit: StackFit.expand,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 16.0,
              left: 16.0,
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Center(  // Center the entire Column
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,  // Center text horizontally
                    children: [
                      Text(
                        countdownText.split(' ')[0], // "10"
                        style: bodySmallStyle.copyWith(
                          fontSize: 24.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        countdownText.split(' ').skip(1).join(' '), // "hari lagi"
                        style: bodySmallStyle.copyWith(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 16.0,
              top: 16.0,
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Center(
                  child: Text(
                    registrantsText,
                    style: bodySmallStyle.copyWith(
                      fontSize: 16.0,
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
