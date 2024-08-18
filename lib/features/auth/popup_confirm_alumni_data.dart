import 'package:alumni_hub_ft_uh/features/alumni/domain/models/alumni_model.dart';
import 'package:flutter/material.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import '../../constants/colors.dart';

class PopupConfirmAlumniData extends StatefulWidget {
  final AlumniModel alumniData;
  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  const PopupConfirmAlumniData({
    super.key,
    required this.alumniData,
    required this.onConfirm,
    required this.onCancel,
  });

  @override
  State<PopupConfirmAlumniData> createState() => _PopupConfirmAlumniDataState();
}

class _PopupConfirmAlumniDataState extends State<PopupConfirmAlumniData> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return AlertDialog(
      title: Text(
        'Klaim Data Alumni',
        style: textTheme.headlineMedium
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(thickness: 1.0, color: AppColors.gray3),
          const SizedBox(height: 16),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Anda akan melakukan klaim terhadap data Alumni :',
              style: textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.gray2,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 24),
          _buildDataRow('Nama Lengkap', widget.alumniData.nama, textTheme),
          _buildDataRow(
              'NIM / Stambuk', widget.alumniData.nim ?? '-', textTheme),
          _buildDataRow('Tanggal Lahir', widget.alumniData.tglLahir, textTheme),
          _buildDataRow('Jurusan', widget.alumniData.jurusan, textTheme),
          _buildDataRow('Angkatan', widget.alumniData.angkatan, textTheme),
          const SizedBox(height: 16),
          Row(
            children: [
              Checkbox(
                value: _isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked = value ?? false;
                  });
                },
              ),
              Expanded(
                child: Text(
                  'Saya menyatakan bahwa data ini benar merupakan data saya sebagai Alumni Fakultas Teknik',
                  style: textTheme.bodySmall?.copyWith(fontSize: 9),
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        Row(
          children: [
            Expanded(
              child: ButtonWidget(
                onPressed: widget.onCancel,
                label: 'Kembali',
                color: AppColors.gray3,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: ButtonWidget(
                onPressed: _isChecked ? _handleSubmit : null,
                label: 'Submit',
                color: _isChecked ? AppColors.primaryColor : AppColors.gray3,
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _handleSubmit() {
    widget.onConfirm();
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
                    textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
