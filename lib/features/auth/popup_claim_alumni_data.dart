import 'package:flutter/material.dart';
import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'popup_confirm_alumni_data.dart'; // Import the new confirmation popup widget

class AlumniData {
  final String name;
  final String nim;
  final String dob;
  final String department;
  final String year;
  final VoidCallback onClaim;
  final bool isClaimed; // New property to indicate if the data is claimed

  AlumniData({
    required this.name,
    required this.nim,
    required this.dob,
    required this.department,
    required this.year,
    required this.onClaim,
    this.isClaimed = false, // Default to false if not provided
  });
}

class PopupClaimAlumniData extends StatelessWidget {
  final List<AlumniData> alumniDataList;
  final VoidCallback onBack; // Added onBack callback

  const PopupClaimAlumniData({
    super.key,
    required this.alumniDataList,
    required this.onBack, // Include onBack in constructor
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final alumniCount = alumniDataList.length;

    return AlertDialog(
      contentPadding: const EdgeInsets.all(16), // Add padding to the content area
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Data Alumni',
            style: textTheme.headlineMedium?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            '($alumniCount)',
            style: textTheme.bodyMedium?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      content: SizedBox(
        width: 800, // Set the desired width for the dialog
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: alumniDataList.map((alumni) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDataSection(alumni, textTheme, context),
                  const Divider(thickness: 1.0),
                ],
              );
            }).toList(),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0), // Add horizontal padding
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: double.infinity, // Make the button expand to full width
                child: ButtonWidget(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog when this button is pressed
                  },
                  label: 'Kembali',
                  color: AppColors.gray3,
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog when this button is pressed
                },
                child: Text(
                  'Data saya diklaim orang lain',
                  style: textTheme.bodySmall?.copyWith(
                    decoration: TextDecoration.underline,
                    color: AppColors.gray3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDataSection(AlumniData alumni, TextTheme textTheme, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDataRow('Nama Lengkap', alumni.name, textTheme),
        _buildDataRow('NIM / Stambuk', alumni.nim, textTheme),
        _buildDataRow('Tanggal Lahir', alumni.dob, textTheme),
        _buildDataRow('Jurusan', alumni.department, textTheme),
        _buildDataRow('Angkatan', alumni.year, textTheme),
        const SizedBox(height: 16),
        Center(
          child: SizedBox(
            width: 200, // Set a fixed width for the button
            child: ButtonWidget(
              onPressed: alumni.isClaimed
                  ? null
                  : () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return PopupConfirmAlumniData(
                      alumniData: alumni, // Pass the entire AlumniData object
                      onConfirm: () {
                        Navigator.of(context).pop(); // Close confirmation dialog
                        alumni.onClaim(); // Call the onClaim callback
                      },
                      onCancel: () {
                        Navigator.of(context).pop(); // Close confirmation dialog
                      },
                    );
                  },
                );
              },
              label: alumni.isClaimed ? 'Data telah diklaim' : 'Klaim Data',
              color: alumni.isClaimed ? AppColors.gray3 : AppColors.primaryColor,
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }


  Widget _buildDataRow(String label, String value, TextTheme textTheme) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 150,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '$label :',
                style: textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
