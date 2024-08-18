import 'package:alumni_hub_ft_uh/common/utils/app_navigation.dart';
import 'package:alumni_hub_ft_uh/features/auth/sign_in_screen.dart';
import 'package:alumni_hub_ft_uh/features/search/search_screen.dart';
import 'package:alumni_hub_ft_uh/features/user/bloc/user_bloc.dart';
import 'package:alumni_hub_ft_uh/features/user/bloc/user_event.dart';
import 'package:alumni_hub_ft_uh/features/user/bloc/user_state.dart';
import 'package:alumni_hub_ft_uh/locator.dart';
import 'package:flutter/material.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/footer/footer_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/listTile/list_tile_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBarMenuWidget extends StatelessWidget {
  const AppBarMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final userSession = context.read<UserBloc>().getUserSession();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.close, color: Colors.black),
              onPressed: () => locator<AppNavigation>().goBack(),
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Container(
                height: 35,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 1.0),
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: Colors.black),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          locator<AppNavigation>()
                              .navigateTo(SearchScreen.route);
                        },
                        child: AbsorbPointer(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(color: Colors.black54),
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 13.5), // Adjust padding
                            ),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: BlocConsumer<UserBloc, UserState>(
        listener: (context, state) {
          if (state is UserStateSuccessSignOut || state is UserStateException) {
            locator<AppNavigation>().navigateReplace(SignInScreen.route);
          }
        },
        builder: (context, state) {
          return ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          NetworkImage(userSession?.user?.avatar ?? ''),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userSession?.user?.alumni?.nama ?? 'Guest',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          userSession?.user?.email ?? '',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ListTileWidget(
                icon: Icons.location_on_outlined,
                title: 'Sekitar Saya',
                onTap: () => Navigator.pushNamed(context, '/coming-soon'),
              ),
              ListTileWidget(
                icon: Icons.mail_outline,
                title: 'Kemitraan',
                onTap: () => Navigator.pushNamed(context, '/coming-soon'),
              ),
              ListTileWidget(
                icon: Icons.local_offer_outlined,
                title: 'E-commerce',
                onTap: () => Navigator.pushNamed(context, '/coming-soon'),
              ),
              ListTileWidget(
                icon: Icons.school_outlined,
                title: 'Mentoring',
                onTap: () => Navigator.pushNamed(context, '/coming-soon'),
              ),
              ListTileWidget(
                icon: Icons.calendar_month,
                title: 'List Event',
                onTap: () => Navigator.pushNamed(context, '/events'),
              ),
              ListTileWidget(
                icon: Icons.book_outlined,
                title: 'Tracer Study',
                onTap: () => Navigator.pushNamed(context, '/coming-soon'),
              ),
              // ListTileWidget(
              //   icon: Icons.settings_outlined,
              //   title: 'Pengaturan',
              //   onTap: () => Navigator.pushNamed(context, '/setting'),
              // ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 16.0),
                child: Center(
                  child: ButtonWidget(
                    onPressed: () async {
                      context.read<UserBloc>().add(UserEventSignOut());
                    },
                    isLoading: state is UserStateSignOutLoading,
                    label: 'Keluar',
                  ),
                ),
              ),
              const SizedBox(height: 18), // Add spacing before the footer
              const FooterWidget(),
            ],
          );
        },
      ),
    );
  }
}
