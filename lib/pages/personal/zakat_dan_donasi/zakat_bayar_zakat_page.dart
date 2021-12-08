import 'package:flutter/material.dart';
import 'package:pakektp/theme.dart';

class ZakatBayarZakatPage extends StatefulWidget {
  const ZakatBayarZakatPage({Key? key}) : super(key: key);

  @override
  _ZakatBayarZakatPage createState() => _ZakatBayarZakatPage();
}

class _ZakatBayarZakatPage extends State<ZakatBayarZakatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            'Bayar Zakat',
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  const SizedBox(
                    height: 230,
                  ),
                  Text(
                    'Kamu belum memiliki kewajiban membayar zakat Maal',
                    style: khulaTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: blackColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/zakat-notification');
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
                        'Ikut Berdonasi',
                        style: khulaTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: blackColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/home-personal');
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
                        'Kembali ke Home',
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
          ],
        ),
      ),
    );
  }
}
