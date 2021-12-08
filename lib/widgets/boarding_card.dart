import 'package:flutter/material.dart';
import 'package:pakektp/models/boarding_model.dart';
import 'package:pakektp/theme.dart';

class BoardingCard extends StatelessWidget {
  final BoardingModel data;
  const BoardingCard(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 110,
        ),
        Image.asset(
          data.imageUrl,
          width: MediaQuery.of(context).size.width * 0.55,
        ),
        const SizedBox(
          height: 24,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.70,
          child: Text(
            data.title,
            style: khulaTextStyle.copyWith(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: blackColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.70,
          child: Text(
            data.caption,
            style: khulaTextStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: blackColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            data.id == 1
                ? Image.asset(
                    'assets/bullet_active.png',
                    width: 10,
                  )
                : Image.asset(
                    'assets/bullet_deactive.png',
                    width: 10,
                  ),
            const SizedBox(
              width: 16,
            ),
            data.id == 2
                ? Image.asset(
                    'assets/bullet_active.png',
                    width: 10,
                  )
                : Image.asset(
                    'assets/bullet_deactive.png',
                    width: 10,
                  ),
            const SizedBox(
              width: 16,
            ),
            data.id == 3
                ? Image.asset(
                    'assets/bullet_active.png',
                    width: 10,
                  )
                : Image.asset(
                    'assets/bullet_deactive.png',
                    width: 10,
                  ),
          ],
        ),
      ],
    );
  }
}
