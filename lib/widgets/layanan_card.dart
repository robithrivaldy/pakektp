import 'package:flutter/material.dart';
import 'package:pakektp/models/layanan_model.dart';
import 'package:pakektp/theme.dart';

class LayananCard extends StatelessWidget {
  final LayananModel data;
  const LayananCard(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.45,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: whiteColor,
            border: Border.all(color: greyColor, width: 1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Image.asset(data.imageUrl, width: 40),
          ),
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
