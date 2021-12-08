import 'package:flutter/material.dart';
import 'package:pakektp/models/nominal_model.dart';
import 'package:pakektp/theme.dart';
import 'package:pakektp/widgets/nominal_card.dart';

class PembayaranNominalPage extends StatefulWidget {
  const PembayaranNominalPage({Key? key}) : super(key: key);

  @override
  _PembayaranNominalPage createState() => _PembayaranNominalPage();
}

class _PembayaranNominalPage extends State<PembayaranNominalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: greyColor,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Image.asset('assets/btn_back.png'),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            'E Voucher',
            style: khulaTextStyle.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: blackColor,
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 18,
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      border: Border.all(color: greyColor),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/bullet_pink.png',
                          width: 54,
                          height: 54,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Voucher Google Play',
                          style: khulaTextStyle.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: blackColor,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    decoration: const BoxDecoration(),
                    child: Text(
                      'Pilih Nominal Voucher',
                      style: khulaTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: blackColor),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/notification');
                    },
                    child: NominalCard(
                      NominalModel(
                        id: 1,
                        name: 'Voucher 10.000',
                        description: '',
                        price: 1300,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/notification');
                    },
                    child: NominalCard(
                      NominalModel(
                        id: 1,
                        name: 'Voucher 20.000',
                        description: '',
                        price: 2300,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/notification');
                    },
                    child: NominalCard(
                      NominalModel(
                        id: 1,
                        name: 'Voucher 30.000',
                        description: '',
                        price: 3300,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/notification');
                    },
                    child: NominalCard(
                      NominalModel(
                        id: 1,
                        name: 'Voucher 40.000',
                        description: '',
                        price: 4300,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/notification');
                    },
                    child: NominalCard(
                      NominalModel(
                        id: 1,
                        name: 'Voucher 50.000',
                        description: '',
                        price: 5300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
