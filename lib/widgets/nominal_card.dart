import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pakektp/models/nominal_model.dart';
import 'package:pakektp/theme.dart';

class NominalCard extends StatelessWidget {
  final NominalModel data;
  const NominalCard(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 64,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                data.name,
                style: khulaTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: blackColor,
                ),
                textAlign: TextAlign.start,
              ),
              data.description != ''
                  ? Text(
                      data.description,
                      style: khulaTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: greyColor,
                      ),
                      textAlign: TextAlign.start,
                    )
                  : const Spacer(),
            ],
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              NumberFormat.currency(
                      locale: 'id', symbol: 'Rp ', decimalDigits: 0)
                  .format(data.price),
              style: khulaTextStyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
