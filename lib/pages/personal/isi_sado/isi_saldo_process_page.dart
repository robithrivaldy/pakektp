import 'package:flutter/material.dart';

import 'package:pakektp/theme.dart';

class IsiSaldoProcessPage extends StatefulWidget {
  const IsiSaldoProcessPage({Key? key}) : super(key: key);

  @override
  _IsiSaldoProcessPage createState() => _IsiSaldoProcessPage();
}

class _IsiSaldoProcessPage extends State<IsiSaldoProcessPage> {
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
                    height: 80,
                  ),
                  Text(
                    '09.22',
                    style: khulaTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: blackColor,
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Image.asset('assets/image_isi_saldo.png', width: 260),
                  const SizedBox(
                    height: 22,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.60,
                    decoration: const BoxDecoration(),
                    child: Text(
                      'Transaksi Isi Saldo mu melalui BCA Virtual Account sedang dalam proses, Saldo akan terisi kurang dari 10 menit sejak Transfer berhasil',
                      style: khulaTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 62,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.60,
                    decoration: const BoxDecoration(),
                    child: Text(
                      'Input Bukti Transaksi jika kamu transfer via Teller atau jika transaksi bermasalah',
                      style: khulaTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
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
              onTap: () {},
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
                  'Input Bukti Transaksi',
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
                  'Ok',
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
