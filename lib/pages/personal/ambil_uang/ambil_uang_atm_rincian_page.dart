import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pakektp/theme.dart';

class AmbilUangAtmRincianPage extends StatefulWidget {
  const AmbilUangAtmRincianPage({Key? key}) : super(key: key);

  @override
  _AmbilUangAtmRincianPage createState() => _AmbilUangAtmRincianPage();
}

class _AmbilUangAtmRincianPage extends State<AmbilUangAtmRincianPage> {
  bool isVisible1 = false;
  bool isVisible2 = false;
  bool isVisible3 = false;

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
            'Ambil Uang Lewat ATM',
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 18,
                      horizontal: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rincian Penarikan',
                          style: khulaTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: blackColor),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nominal Penarikan',
                                  style: khulaTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: blackColor),
                                ),
                                const SizedBox(height: 22),
                                Text(
                                  'Biaya Admin',
                                  style: khulaTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: blackColor),
                                ),
                                const SizedBox(height: 22),
                                Text(
                                  'Total Tagihan',
                                  style: khulaTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: blackColor),
                                ),
                              ],
                            ),
                            const SizedBox(width: 40),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  NumberFormat.currency(
                                          locale: 'id',
                                          symbol: 'Rp ',
                                          decimalDigits: 2)
                                      .format(200000),
                                  style: khulaTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: blackColor),
                                ),
                                const SizedBox(height: 22),
                                Text(
                                  NumberFormat.currency(
                                          locale: 'id',
                                          symbol: 'Rp ',
                                          decimalDigits: 2)
                                      .format(5000),
                                  style: khulaTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: blackColor),
                                ),
                                const SizedBox(height: 22),
                                Text(
                                  NumberFormat.currency(
                                          locale: 'id',
                                          symbol: 'Rp ',
                                          decimalDigits: 2)
                                      .format(205000),
                                  style: khulaTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: blackColor),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 4,
                    decoration: BoxDecoration(
                      color: greyColor,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    decoration: const BoxDecoration(),
                    child: Column(
                      children: [
                        Text(
                          'Penarikan Hanya pada Bank berikut',
                          style: khulaTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: blackColor,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                      ],
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
                        Image.asset(
                          'assets/bullet_pink.png',
                          width: 40,
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'Bank Central Asia (BCA)',
                          style: khulaTextStyle.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: blackColor,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const Spacer(),
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
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.only(
                        left: 32,
                      ),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        border: Border.all(color: greyColor),
                      ),
                      child: Text(
                        '1. Tekan Soft Key (tombol warna hijau atau tombol kanan bawah disebelah layar ATM)\n2. Pilih “Ambil Uang pakeKTP”\n3. Masukkan No Telp yang terdaftar pada padeKTP\n4. Masukkan “Kode Penarikan”\n5. Proses Selesai, Atm akan mengeluarkan uang tunai dan struk ATM',
                        style: khulaTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
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
                      children: [
                        Image.asset(
                          'assets/bullet_pink.png',
                          width: 40,
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'Bank Rakyat Indinesia (BRI)',
                          style: khulaTextStyle.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: blackColor,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const Spacer(),
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
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.only(
                        left: 32,
                      ),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        border: Border.all(color: greyColor),
                      ),
                      child: Text(
                        '1. Tekan Soft Key (tombol warna hijau atau tombol kanan bawah disebelah layar ATM)\n2. Pilih “Ambil Uang pakeKTP”\n3. Masukkan No Telp yang terdaftar pada padeKTP\n4. Masukkan “Kode Penarikan”\n5. Proses Selesai, Atm akan mengeluarkan uang tunai dan struk ATM',
                        style: khulaTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
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
                      children: [
                        Image.asset(
                          'assets/bullet_pink.png',
                          width: 40,
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'Bank Mandiri',
                          style: khulaTextStyle.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: blackColor,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const Spacer(),
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
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.only(
                        left: 32,
                      ),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        border: Border.all(color: greyColor),
                      ),
                      child: Text(
                        '1. Tekan Soft Key (tombol warna hijau atau tombol kanan bawah disebelah layar ATM)\n2. Pilih “Ambil Uang pakeKTP”\n3. Masukkan No Telp yang terdaftar pada padeKTP\n4. Masukkan “Kode Penarikan”\n5. Proses Selesai, Atm akan mengeluarkan uang tunai dan struk ATM',
                        style: khulaTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
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
          Navigator.pushNamed(context, '/ambil-uang-atm-kode-penarikan');
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
            'Buat Kode Penarikan',
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
