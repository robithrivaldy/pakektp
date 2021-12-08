import 'package:flutter/material.dart';
import 'package:pakektp/models/bank_model.dart';
import 'package:pakektp/theme.dart';

class BankCard extends StatelessWidget {
  final BankModel data;
  const BankCard(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      padding: const EdgeInsets.only(
        left: 20,
      ),
      margin: const EdgeInsets.only(
        left: 40,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        // border: Border.all(color: greyColor),
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
            width: 40,
            height: 40,
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
