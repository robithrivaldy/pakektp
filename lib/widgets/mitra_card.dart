import 'package:flutter/material.dart';
import 'package:pakektp/models/mitra_model.dart';
import 'package:pakektp/theme.dart';

class MitraCard extends StatelessWidget {
  final MitraModel data;
  const MitraCard(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 72,
          height: 72,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: redColor,
            border: Border.all(color: greyColor, width: 1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(data.imageUrl, width: 40),
        ),
        const SizedBox(height: 10),
        Text(
          data.name,
          style: khulaTextStyle.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: blackColor,
          ),
        ),
      ],
    );
  }
}
