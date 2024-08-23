import 'package:alumni_hub_ft_uh/common/utils/ui_helper.dart';
import 'package:alumni_hub_ft_uh/common/widgets/bottomBar/bottom_bar_item_widget.dart';
import 'package:alumni_hub_ft_uh/features/user/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomBarWidget extends StatelessWidget {
  final int? currentIndex;

  const BottomBarWidget({super.key, this.currentIndex});

  @override
  Widget build(BuildContext context) {
    final userSession = context.read<UserBloc>().getUserSession();

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      height: 76,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          BottomBarItemWidget(
            index: 0,
            iconAsset: 'assets/icons/home.svg',
            label: 'Beranda',
            isSelected: currentIndex == 0,
            onTap: () => Navigator.of(context).pushNamed('/home'),
          ),
          BottomBarItemWidget(
            index: 1,
            iconAsset: 'assets/icons/news.svg',
            label: 'Berita',
            isSelected: currentIndex == 1,
            onTap: () => Navigator.of(context).pushNamed('/news'),
          ),
          BottomBarItemWidget(
            index: 2,
            iconAsset: 'assets/icons/donation.svg',
            label: 'Donasi',
            isSelected: currentIndex == 2,
            onTap: () => {
              if (userSession?.user?.alumni != null)
                {Navigator.of(context).pushNamed('/donation')}
              else
                {klaimData(context)}
            },
          ),
          BottomBarItemWidget(
            index: 3,
            iconAsset: 'assets/icons/vacancy.svg',
            label: 'Loker',
            isSelected: currentIndex == 3,
            onTap: () {
              if (userSession?.user?.alumni != null) {
                Navigator.of(context).pushNamed('/vacancy');
              } else {
                klaimData(context);
              }
            },
          ),
          BottomBarItemWidget(
            index: 4,
            iconAsset: 'assets/icons/alumni.svg',
            label: 'Alumni',
            isSelected: currentIndex == 4,
            onTap: () {
              if (userSession?.user?.alumni != null) {
                Navigator.of(context).pushNamed('/alumni');
              } else {
                klaimData(context);
              }
            },
          ),
        ],
      ),
    );
  }
}
