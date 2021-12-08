import 'package:flutter/material.dart';
import 'package:pakektp/models/menu_model.dart';
import 'package:pakektp/theme.dart';

class MenuCard extends StatelessWidget {
  final MenuModel data;
  const MenuCard(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 72,
          height: 72,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: whiteColor,
            border: Border.all(color: greyColor, width: 1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(data.imageUrl, width: 40),
        ),
        const SizedBox(height: 10),
        Container(
          width: 76,
          height: 32,
          decoration: const BoxDecoration(),
          child: Text(
            data.name,
            style: khulaTextStyle.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: blackColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
