import 'package:flutter/material.dart';
import 'package:pakektp/theme.dart';

class MintaSaldoProcessPage extends StatefulWidget {
  const MintaSaldoProcessPage({Key? key}) : super(key: key);

  @override
  _MintaSaldoProcessPage createState() => _MintaSaldoProcessPage();
}

class _MintaSaldoProcessPage extends State<MintaSaldoProcessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                children: [
                  const SizedBox(
                    height: 260,
                  ),
                  Image.asset('assets/image_minta_saldo.png', width: 268),
                  const SizedBox(
                    height: 22,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.70,
                    decoration: const BoxDecoration(),
                    child: Text(
                      'Transaksi mu udah selesai diproses terima kasih telah menggunakan layanan dari pakeKTP',
                      style: khulaTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: blackColor,
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
      bottomNavigationBar: InkWell(
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
    );
  }
}
