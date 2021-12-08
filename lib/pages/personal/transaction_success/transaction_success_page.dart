import 'package:flutter/material.dart';
import 'package:pakektp/theme.dart';

class TransactionSuccessPage extends StatefulWidget {
  const TransactionSuccessPage({Key? key}) : super(key: key);

  @override
  _TransactionSuccessPage createState() => _TransactionSuccessPage();
}

class _TransactionSuccessPage extends State<TransactionSuccessPage> {
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
            SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 220,
                    ),
                    Image.asset(
                      'assets/image_success.png',
                      width: 268,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.80,
                      decoration: const BoxDecoration(),
                      child: Text(
                        'Transaksi mu udah selesai diproses terima kasih telah menggunakan layanan dari pakeKTP',
                        style: khulaTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: blackColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
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
            'OK',
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
