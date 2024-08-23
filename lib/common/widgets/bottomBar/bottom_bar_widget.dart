import 'package:alumni_hub_ft_uh/common/utils/custom_dialog.dart';
import 'package:alumni_hub_ft_uh/common/widgets/bottomBar/bottom_bar_item_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:alumni_hub_ft_uh/features/user/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomBarWidget extends StatelessWidget {
  final int? currentIndex;

  const BottomBarWidget({super.key, this.currentIndex});

  @override
  Widget build(BuildContext context) {
    final userSession = context.read<UserBloc>().getUserSession();

    void _klaimData() {
      CustomDialog.showCustomDialog(
        context,
        title: 'Klaim Data Alumni',
        content: Text(
          'Untuk mendapatkan akses full, isi kelengkapan data alumni',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [
          Expanded(
            child: ButtonWidget(
              label: 'Nanti',
              color: AppColors.secondaryColor,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: ButtonWidget(
              label: 'Klaim Data',
              onPressed: () {
                Navigator.of(context).pushNamed('/claim_alumni_data');
              },
            ),
          ),
        ],
      );
    }

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
                {_klaimData()}
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
                _klaimData();
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
                _klaimData();
              }
            },
          ),
        ],
      ),
    );
  }
}
