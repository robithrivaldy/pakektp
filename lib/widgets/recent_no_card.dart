import 'package:flutter/material.dart';
import 'package:pakektp/models/recent_no_model.dart';
import 'package:pakektp/theme.dart';

class RecentNoCard extends StatelessWidget {
  final RecentNoModel data;
  const RecentNoCard(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.symmetric(
          horizontal: BorderSide(width: 0.5, color: greyColor),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            data.imageUrl,
            width: 40,
            height: 40,
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            data.noPelanggan,
            style: khulaTextStyle.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: blackColor,
            ),
            textAlign: TextAlign.start,
          ),
          const Spacer(),
          Image.asset(
            'assets/btn_close.png',
            width: 24,
          ),
        ],
      ),
    );
  }
}
