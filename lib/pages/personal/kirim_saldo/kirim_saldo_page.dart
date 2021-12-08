import 'package:flutter/material.dart';
import 'package:pakektp/theme.dart';

class KirimSaldoPage extends StatefulWidget {
  const KirimSaldoPage({Key? key}) : super(key: key);

  @override
  _KirimSaldoPage createState() => _KirimSaldoPage();
}

class _KirimSaldoPage extends State<KirimSaldoPage> {
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
            'Kirim Saldo PakeKTP',
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
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 18,
                  horizontal: 28,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Melalui Scan QR Code',
                      style: khulaTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: blackColor),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Container(
                      width: double.infinity,
                      height: 170,
                      padding: const EdgeInsets.symmetric(
                        vertical: 22,
                      ),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: const Offset(
                                2, 5), // changes position of shadow
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, '/kirim-saldo-scan-qr-code');
                        },
                        child: Image.asset(
                          'assets/icon_scan_qr_code.png',
                          width: 90,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Melalui Scan KTP',
                      style: khulaTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: blackColor),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Container(
                      width: double.infinity,
                      height: 170,
                      padding: const EdgeInsets.symmetric(
                        vertical: 22,
                      ),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: const Offset(
                                2, 5), // changes position of shadow
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/kirim-saldo-scan-ktp');
                        },
                        child: Image.asset(
                          'assets/icon_scan_ktp.png',
                          width: 90,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Melalui Input Manual',
                      style: khulaTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: blackColor),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Container(
                      width: double.infinity,
                      height: 170,
                      padding: const EdgeInsets.symmetric(
                        vertical: 22,
                      ),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: const Offset(
                                2, 5), // changes position of shadow
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/kirim-saldo-penerima');
                        },
                        child: Image.asset(
                          'assets/icon_input_manual.png',
                          width: 90,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
