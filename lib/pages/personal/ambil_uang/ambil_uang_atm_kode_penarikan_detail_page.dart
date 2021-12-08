import 'package:flutter/material.dart';
import 'package:pakektp/theme.dart';

class AmbilUangAtmKodePenarikanDetailPage extends StatefulWidget {
  const AmbilUangAtmKodePenarikanDetailPage({Key? key}) : super(key: key);

  @override
  _AmbilUangAtmKodePenarikanDetailPage createState() =>
      _AmbilUangAtmKodePenarikanDetailPage();
}

class _AmbilUangAtmKodePenarikanDetailPage
    extends State<AmbilUangAtmKodePenarikanDetailPage> {
  bool isVisible1 = false;
  bool isVisible2 = false;
  bool isVisible3 = true;

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
            'Kode Penarikan',
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
                    height: 32,
                  ),
                  Image.asset(
                    'assets/image_kode_penarikan_detail.png',
                    width: MediaQuery.of(context).size.width * 0.70,
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                const SizedBox(height: 264),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset:
                            const Offset(5, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icon_listview.png',
                        height: 8,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        width: double.infinity,
                        height: 60,
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 16,
                        ),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          border: Border.all(color: greyColor, width: 1),
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
                              child:
                                  Image.asset('assets/btn_down.png', width: 24),
                            ),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: isVisible1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(20),
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
                          horizontal: 16,
                        ),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          border: Border.all(color: greyColor, width: 1),
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
                              child:
                                  Image.asset('assets/btn_down.png', width: 24),
                            ),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: isVisible2,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(20),
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
                          horizontal: 16,
                        ),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          border: Border.all(color: greyColor, width: 1),
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
                              child:
                                  Image.asset('assets/btn_down.png', width: 24),
                            ),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: isVisible3,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(20),
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
                      const SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/notification');
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
            'Selesai',
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
