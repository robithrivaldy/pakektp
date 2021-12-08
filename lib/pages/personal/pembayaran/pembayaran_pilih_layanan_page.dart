import 'package:flutter/material.dart';
import 'package:pakektp/models/layanan_model.dart';
import 'package:pakektp/models/menu_model.dart';
import 'package:pakektp/theme.dart';
import 'package:pakektp/widgets/layanan_card.dart';
import 'package:pakektp/widgets/menu_card.dart';

class PembayaranPilihLayananPage extends StatefulWidget {
  const PembayaranPilihLayananPage({Key? key}) : super(key: key);

  @override
  _PembayaranPilihLayananPage createState() => _PembayaranPilihLayananPage();
}

class _PembayaranPilihLayananPage extends State<PembayaranPilihLayananPage> {
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
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 10,
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
                    child: TextField(
                      autocorrect: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: 'Cari Voucher',
                        hintStyle: khulaTextStyle.copyWith(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: whiteColor, width: 1.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: whiteColor, width: 1.5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 16,
                    ),
                    child: Row(
                      children: [
                        MenuCard(
                          MenuModel(
                            id: 1,
                            name: 'Makanan',
                            imageUrl: 'assets/bullet_pink.png',
                          ),
                        ),
                        const Spacer(),
                        MenuCard(
                          MenuModel(
                            id: 2,
                            name: 'Permainan',
                            imageUrl: 'assets/bullet_pink.png',
                          ),
                        ),
                        const Spacer(),
                        MenuCard(
                          MenuModel(
                            id: 3,
                            name: 'Supermarket',
                            imageUrl: 'assets/bullet_pink.png',
                          ),
                        ),
                        const Spacer(),
                        MenuCard(
                          MenuModel(
                            id: 3,
                            name: 'Pelayanan',
                            imageUrl: 'assets/bullet_pink.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    decoration: const BoxDecoration(),
                    child: Text(
                      'Pilih Voucher',
                      style: khulaTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: blackColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 20,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, '/pembayaran-nominal');
                              },
                              child: LayananCard(
                                LayananModel(
                                  id: 1,
                                  name: 'Voucher Google Play',
                                  imageUrl: 'assets/bullet_pink.png',
                                ),
                              ),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, '/pembayaran-nominal');
                              },
                              child: LayananCard(
                                LayananModel(
                                  id: 1,
                                  name: 'Voucher Google Play',
                                  imageUrl: 'assets/bullet_pink.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, '/pembayaran-nominal');
                              },
                              child: LayananCard(
                                LayananModel(
                                  id: 1,
                                  name: 'Voucher Google Play',
                                  imageUrl: 'assets/bullet_pink.png',
                                ),
                              ),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, '/pembayaran-nominal');
                              },
                              child: LayananCard(
                                LayananModel(
                                  id: 1,
                                  name: 'Voucher Google Play',
                                  imageUrl: 'assets/bullet_pink.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, '/pembayaran-nominal');
                              },
                              child: LayananCard(
                                LayananModel(
                                  id: 1,
                                  name: 'Voucher Google Play',
                                  imageUrl: 'assets/bullet_pink.png',
                                ),
                              ),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, '/pembayaran-nominal');
                              },
                              child: LayananCard(
                                LayananModel(
                                  id: 1,
                                  name: 'Voucher Google Play',
                                  imageUrl: 'assets/bullet_pink.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
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
