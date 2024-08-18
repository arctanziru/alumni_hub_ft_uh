import 'package:alumni_hub_ft_uh/common/utils/app_navigation.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:alumni_hub_ft_uh/features/alumni/bloc/alumni_bloc.dart';
import 'package:alumni_hub_ft_uh/locator.dart';
import 'package:alumni_hub_ft_uh/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopupAlumniWidget extends StatefulWidget {
  final bool autoFocus;

  const PopupAlumniWidget({super.key, this.autoFocus = false});

  @override
  PopupAlumniWidgetState createState() => PopupAlumniWidgetState();
}

class PopupAlumniWidgetState extends State<PopupAlumniWidget> with RouteAware {
  String? _selectedAngkatan;
  late TextEditingController _searchController;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      routeObserver.subscribe(this, ModalRoute.of(context)!);
    });
    super.initState();
    _selectedAngkatan = context.read<AlumniAngkatanBloc>().angkatan;
    _searchController =
        TextEditingController(text: context.read<AlumniAngkatanBloc>().search);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    List<String> years = List.generate(
        DateTime.now().year - 1990 + 1, (index) => (1990 + index).toString());

    return Container(
      padding: const EdgeInsets.fromLTRB(16.0, 48.0, 16.0, 48.0),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'FILTER',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Divider(color: Colors.black),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  labelText: 'Nama',
                  labelStyle: theme.textTheme.bodyMedium,
                  prefixIcon: const Icon(Icons.search),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                autofocus: widget.autoFocus,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: ButtonWidget(
                    onPressed: () {
                      setState(() {
                        _selectedAngkatan = null;
                      });
                    },
                    label: 'Angkatan saya',
                    rounded: false,
                    color: _selectedAngkatan == null ? null : Colors.grey[700],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: ButtonWidget(
                    onPressed: () {
                      setState(() {
                        _selectedAngkatan = "all";
                      });
                    },
                    label: 'Semua angkatan',
                    rounded: false,
                    color: _selectedAngkatan == 'all' ? null : Colors.grey[700],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Angkatan Kustom',
                  labelStyle: theme.textTheme.bodyMedium,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                items: years.map((String year) {
                  return DropdownMenuItem<String>(
                    value: year,
                    child: Text(
                      year,
                      style: theme.textTheme.bodyMedium,
                    ),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _selectedAngkatan = newValue;
                  });
                },
              ),
            ),
          ),
          const SizedBox(height: 40),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ButtonWidget(
                      onPressed: () {
                        context.read<AlumniAngkatanBloc>().angkatan =
                            _selectedAngkatan;
                        context.read<AlumniAngkatanBloc>().search =
                            _searchController.value.text.isEmpty
                                ? null
                                : _searchController.value.text;
                        context
                            .read<AlumniAngkatanBloc>()
                            .add(AlumniEventGetAngkatan());
                        locator<AppNavigation>().goBack();
                      },
                      label: 'Simpan',
                      rounded: false,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ButtonWidget(
                      onPressed: () {
                        locator<AppNavigation>().goBack();
                      },
                      label: 'Kembali',
                      rounded: false,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
