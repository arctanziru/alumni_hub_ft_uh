import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBarItemWidget extends StatelessWidget {
  final int index;
  final String iconAsset;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const BottomBarItemWidget({
    super.key,
    required this.index,
    required this.iconAsset,
    required this.label,
    this.isSelected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: !isSelected ? onTap : null,
      child: Column(
        children: [
          Container(
            height: 4,
            decoration: BoxDecoration(
              color: isSelected
                  ? Theme.of(context).primaryColor
                  : Colors.transparent,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            width: 56,
          ),
          const SizedBox(height: 16),
          SvgPicture.asset(
            iconAsset,
            width: 24,
            height: 24,
            theme: SvgTheme(
              currentColor: isSelected ? AppColors.primaryColor : Colors.grey,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: isSelected ? Theme.of(context).primaryColor : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
