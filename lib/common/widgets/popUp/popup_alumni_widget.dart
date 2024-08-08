import 'package:flutter/material.dart';
import '../../../common/widgets/button/button_widget.dart'; // Import your custom ButtonWidget

class PopupAlumniWidget extends StatefulWidget {
  const PopupAlumniWidget({super.key});

  @override
  PopupAlumniWidgetState createState() => PopupAlumniWidgetState();
}

class PopupAlumniWidgetState extends State<PopupAlumniWidget> {
  // Track the selected button
  bool _isAngkatanSayaSelected = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Generate the list of years from 1990 to 2012
    List<String> years = List.generate(2000 - 1990 + 1, (index) => (1990 + index).toString());

    return Container(
      padding: const EdgeInsets.fromLTRB(16.0, 48.0, 16.0, 48.0), // Apply padding to all sides
      decoration: BoxDecoration(
        color: Colors.grey[100], // Set background color to grey[100]
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'FILTER',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold, // You can customize the style further if needed
            ),
          ),
          const SizedBox(height: 20),
          const Divider(color: Colors.black), // Add a divider below the FILTER text
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity, // Make the TextField take full width of its parent
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: const Offset(0, 4), // Shadow position
                  ),
                ],
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Nama',
                  labelStyle: theme.textTheme.bodyMedium, // Apply bodyMedium text style
                  prefixIcon: const Icon(Icons.search),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 5.0),
                  child: ButtonWidget(
                    onPressed: () {
                      setState(() {
                        _isAngkatanSayaSelected = true;
                      });
                    },
                    label: 'ANGKATAN SAYA',
                    rounded: false,
                    color: _isAngkatanSayaSelected ? null : Colors.grey[700], // Change color based on selection
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 5.0),
                  child: ButtonWidget(
                    onPressed: () {
                      setState(() {
                        _isAngkatanSayaSelected = false;
                      });
                    },
                    label: 'SEMUA ANGKATAN',
                    rounded: false,
                    color: !_isAngkatanSayaSelected ? null : Colors.grey[700], // Change color based on selection
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: double.infinity, // Make the DropdownButtonFormField take full width of its parent
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: const Offset(0, 4), // Shadow position
                  ),
                ],
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Angkatan Kustom',
                  labelStyle: theme.textTheme.bodyMedium, // Apply bodyMedium text style
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
                      style: theme.textTheme.bodyMedium, // Apply bodyMedium text style
                    ),
                  );
                }).toList(),
                onChanged: (newValue) {},
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
                        // Apply filter logic
                        Navigator.of(context).pop();
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
                        Navigator.of(context).pop();
                      },
                      label: 'Kembali',
                      rounded: false,
                      color: Colors.grey[700], // Set the color to dark grey
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
