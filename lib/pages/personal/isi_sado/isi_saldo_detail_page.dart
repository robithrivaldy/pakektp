import 'package:flutter/material.dart';

import 'package:pakektp/theme.dart';

class IsiSaldoDetailPage extends StatefulWidget {
  const IsiSaldoDetailPage({Key? key}) : super(key: key);

  @override
  _IsiSaldoDetailPage createState() => _IsiSaldoDetailPage();
}

class _IsiSaldoDetailPage extends State<IsiSaldoDetailPage> {
  bool isVisible1 = false;
  bool isVisible2 = false;
  bool isVisible3 = false;
  bool isVisible4 = false;

  void openVisible1() {
    setState(() {
      isVisible1 = !isVisible1;
    });
  }

  void openVisible2() {
    setState(() {
      isVisible2 = !isVisible2;
    });
  }

  void openVisible3() {
    setState(() {
      isVisible3 = !isVisible3;
    });
  }

  void openVisible4() {
    setState(() {
      isVisible4 = !isVisible4;
    });
  }

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
            'Bank Central Asia (BCA)',
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
                      vertical: 22,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset:
                              const Offset(2, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          'BCA Nomor Virtual Account',
                          style: khulaTextStyle.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: blackColor,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '1004 0812 1214 0077',
                          style: khulaTextStyle.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 36,
                            color: blackColor,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 6,
                              horizontal: 12,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: blackColor),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Salin Nomor',
                              style: khulaTextStyle.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: blackColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Text(
                          'Nama Akun : User Name',
                          style: khulaTextStyle.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: blackColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      'Petunjuk Tranfer Dana',
                      style: khulaTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: blackColor,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset:
                              const Offset(2, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ATM BCA',
                          style: khulaTextStyle.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: blackColor,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        InkWell(
                          onTap: () {
                            openVisible1();
                          },
                          child: Image.asset('assets/btn_down.png', width: 24),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: isVisible1,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 40,
                      ),
                      decoration: BoxDecoration(
                        color: whiteColor,
                      ),
                      child: Text(
                        'Petunjuk cara isi saldo via Virtual Account\n1. Masukkan Nomor Virtual Account\n2.Masukan Nominal tranfer\n3.Simpan bukti pembayaran',
                        style: khulaTextStyle.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: blackColor,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset:
                              const Offset(2, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Klik BCA',
                          style: khulaTextStyle.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: blackColor,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        InkWell(
                          onTap: () {
                            openVisible2();
                          },
                          child: Image.asset('assets/btn_down.png', width: 24),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: isVisible2,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 40,
                      ),
                      decoration: BoxDecoration(
                        color: whiteColor,
                      ),
                      child: Text(
                        'Petunjuk cara isi saldo via Virtual Account\n1. Masukkan Nomor Virtual Account\n2.Masukan Nominal tranfer\n3.Simpan bukti pembayaran',
                        style: khulaTextStyle.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: blackColor,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset:
                              const Offset(2, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'm-BCA',
                          style: khulaTextStyle.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: blackColor,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        InkWell(
                          onTap: () {
                            openVisible3();
                          },
                          child: Image.asset('assets/btn_down.png', width: 24),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: isVisible3,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 40,
                      ),
                      decoration: BoxDecoration(
                        color: whiteColor,
                      ),
                      child: Text(
                        'Petunjuk cara isi saldo via Virtual Account\n1. Masukkan Nomor Virtual Account\n2.Masukan Nominal tranfer\n3.Simpan bukti pembayaran',
                        style: khulaTextStyle.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: blackColor,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset:
                              const Offset(2, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Teller',
                          style: khulaTextStyle.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: blackColor,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        InkWell(
                          onTap: () {
                            openVisible4();
                          },
                          child: Image.asset('assets/btn_down.png', width: 24),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: isVisible4,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 40,
                      ),
                      decoration: BoxDecoration(
                        color: whiteColor,
                      ),
                      child: Text(
                        'Petunjuk cara isi saldo via Virtual Account\n1. Masukkan Nomor Virtual Account\n2.Masukan Nominal tranfer\n3.Simpan bukti pembayaran',
                        style: khulaTextStyle.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: blackColor,
                        ),
                        textAlign: TextAlign.start,
                      ),
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
          Navigator.pushNamed(context, '/isi-saldo-process');
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
            'Sudah Transfer',
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
