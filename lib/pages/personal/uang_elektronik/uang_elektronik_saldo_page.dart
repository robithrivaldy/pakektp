import 'package:flutter/material.dart';

import 'package:pakektp/theme.dart';

class UangElektronikSaldoPage extends StatefulWidget {
  const UangElektronikSaldoPage({Key? key}) : super(key: key);

  @override
  _UangElektronikSaldoPage createState() => _UangElektronikSaldoPage();
}

class _UangElektronikSaldoPage extends State<UangElektronikSaldoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 120,
                  ),
                  Image.asset('assets/image_uang_elektronik.png', width: 340),
                  const SizedBox(
                    height: 22,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.60,
                    decoration: const BoxDecoration(),
                    child: Text(
                      'Saldo kartu uang elektronik flazz sebesar',
                      style: khulaTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.60,
                    decoration: const BoxDecoration(),
                    child: Text(
                      'Rp. 30.000,00',
                      style: khulaTextStyle.copyWith(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 140,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/uang-elektronik-nominal');
              },
              child: Container(
                width: double.infinity,
                height: 70,
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                decoration: BoxDecoration(
                  color: whiteColor,
                  border: Border.all(color: blackColor),
                ),
                child: Text(
                  'Isi Saldo',
                  style: khulaTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: blackColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/main-personal');
              },
              child: Container(
                width: double.infinity,
                height: 70,
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                decoration: BoxDecoration(
                  color: greyColor,
                ),
                child: Text(
                  'Menu Utama',
                  style: khulaTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: blackColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
