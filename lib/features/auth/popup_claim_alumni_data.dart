import 'package:alumni_hub_ft_uh/features/alumni/domain/models/alumni_model.dart';
import 'package:alumni_hub_ft_uh/features/claim_alumni/bloc/claim/claim_alumni_bloc.dart';
import 'package:alumni_hub_ft_uh/features/claim_alumni/domain/models/claim_alumni_model.dart';
import 'package:alumni_hub_ft_uh/features/user/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  final List<AlumniModel> alumniDataList;
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
      contentPadding:
          const EdgeInsets.all(16), // Add padding to the content area
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Data Alumni',
            style: textTheme.headlineMedium
                ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            '($alumniCount)',
            style: textTheme.bodyMedium
                ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
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
          padding: const EdgeInsets.symmetric(
              horizontal: 8.0), // Add horizontal padding
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: double.infinity, // Make the button expand to full width
                child: ButtonWidget(
                  onPressed: () {
                    Navigator.of(context)
                        .pop(); // Close the dialog when this button is pressed
                  },
                  label: 'Kembali',
                  color: AppColors.gray3,
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pop(); // Close the dialog when this button is pressed
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

  Widget _buildDataSection(
      AlumniModel alumni, TextTheme textTheme, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDataRow('Nama Lengkap', alumni.nama, textTheme),
        _buildDataRow('NIM / Stambuk', alumni.nim ?? '-', textTheme),
        _buildDataRow('Tanggal Lahir', alumni.tglLahir, textTheme),
        _buildDataRow('Jurusan', alumni.jurusan, textTheme),
        _buildDataRow('Angkatan', alumni.angkatan, textTheme),
        const SizedBox(height: 16),
        Center(
          child: BlocConsumer<ClaimAlumniBloc, ClaimAlumniState>(
            listener: (context, state) {
              if (state is ClaimAlumniSuccess) {
                Navigator.pushReplacementNamed(context, '/home');
                // Show a success message
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Data berhasil diklaim'),
                    duration: Duration(seconds: 2),
                  ),
                );
                // navigate to home
              } else if (state is ClaimAlumniError) {
                // Show an error message
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                        'Gagal mengklaim data: ${state.exception.message}'),
                    duration: const Duration(seconds: 2),
                  ),
                );
              }
            },
            builder: (context, state) {
              return SizedBox(
                width: 200, // Set a fixed width for the button
                child: ButtonWidget(
                  onPressed: alumni.isClaimed == true
                      ? null
                      : () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return PopupConfirmAlumniData(
                                alumniData: alumni,
                                onConfirm: () {
                                  Navigator.of(context).pop();
                                  final userSession =
                                      context.read<UserBloc>().getUserSession();
                                  context.read<ClaimAlumniBloc>().add(
                                        ClaimAlumni(
                                          claimAlumniBody: ClaimAlumniBody(
                                            idAlumni: alumni.idAlumni,
                                          ),
                                          token: userSession?.token,
                                        ),
                                      );
                                  
                                },
                                onCancel: () {
                                  Navigator.of(context)
                                      .pop(); // Close confirmation dialog
                                },
                              );
                            },
                          );
                        },
                  isLoading: state is ClaimAlumniLoading,
                  label: alumni.isClaimed == true
                      ? 'Data telah diklaim'
                      : 'Klaim Data',
                  color: alumni.isClaimed == true
                      ? AppColors.gray3
                      : AppColors.primaryColor,
                ),
              );
            },
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
                style:
                    textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold),
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
