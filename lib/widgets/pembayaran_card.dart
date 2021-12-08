import 'package:flutter/material.dart';
import 'package:pakektp/models/pembayaran_model.dart';
import 'package:pakektp/theme.dart';

class PembayaranCard extends StatelessWidget {
  final PembayaranModel data;
  const PembayaranCard(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      margin: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(2, 5), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            data.imageUrl,
            width: 22,
            height: 22,
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            data.name,
            style: khulaTextStyle.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: blackColor,
            ),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
