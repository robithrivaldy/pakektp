import 'package:flutter/material.dart';
import 'package:pakektp/models/mitra_model.dart';
import 'package:pakektp/models/menu_model.dart';
import 'package:pakektp/theme.dart';
import 'package:pakektp/widgets/mitra_card.dart';
import 'package:pakektp/widgets/menu_card.dart';

class HomePersonalPage extends StatelessWidget {
  const HomePersonalPage({Key? key}) : super(key: key);

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
            SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/background_red.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/logo_home.png',
                                  width: 120,
                                ),
                                Image.asset(
                                  'assets/icon_notification.png',
                                  width: 30,
                                ),
                              ],
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.90,
                              height: 250,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/account_card.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 40,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/photo_profile.png',
                                          width: 40,
                                        ),
                                        const SizedBox(width: 12),
                                        Text(
                                          'Username',
                                          style: khulaTextStyle.copyWith(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20,
                                            color: whiteColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.90,
                                      height: 2,
                                      decoration: BoxDecoration(
                                        color: whiteColor,
                                      ),
                                    ),
                                    const SizedBox(height: 40),
                                    Text(
                                      'Rp 1.000.000,00',
                                      style: khulaTextStyle.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 30,
                                        color: whiteColor,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.90,
                              decoration: BoxDecoration(
                                color: pinkColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 16,
                                  horizontal: 32,
                                ),
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, '/isi-saldo-bank');
                                      },
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'assets/icon_isi_saldo.png',
                                            width: 46,
                                          ),
                                          const SizedBox(
                                            height: 6,
                                          ),
                                          Text(
                                            'Isi Saldo',
                                            style: khulaTextStyle.copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: whiteColor,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, '/minta-saldo-scan');
                                      },
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'assets/icon_minta_saldo.png',
                                            width: 46,
                                          ),
                                          const SizedBox(
                                            height: 6,
                                          ),
                                          Text(
                                            'Minta Saldo',
                                            style: khulaTextStyle.copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: whiteColor,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, '/kirim-saldo');
                                      },
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'assets/icon_kirim_saldo.png',
                                            width: 46,
                                          ),
                                          const SizedBox(
                                            height: 6,
                                          ),
                                          Text(
                                            'Kirim Saldo',
                                            style: khulaTextStyle.copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: whiteColor,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextField(
                              onTap: () {},
                              autocorrect: true,
                              decoration: InputDecoration(
                                isDense: true,
                                hintText:
                                    ' Cari warung, gerobak, atau fitur lainnya',
                                prefixIcon: const Icon(
                                  Icons.search_outlined,
                                  size: 30,
                                ),
                                hintStyle: khulaTextStyle.copyWith(
                                  color: greyColor,
                                  fontWeight: FontWeight.w700,
                                ),
                                filled: true,
                                fillColor: whiteColor,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(100.0)),
                                  borderSide:
                                      BorderSide(color: blackColor, width: 1),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(100.0)),
                                  borderSide:
                                      BorderSide(color: pinkColor, width: 1),
                                ),
                              ),
                            ),
                            const SizedBox(height: 18),
                            Text(
                              'Transaksi Anda',
                              style: khulaTextStyle.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: blackColor,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/listrik');
                                  },
                                  child: MenuCard(
                                    MenuModel(
                                      id: 1,
                                      name: 'Listrik',
                                      imageUrl: 'assets/icon_listrik.png',
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/pulsa');
                                  },
                                  child: MenuCard(
                                    MenuModel(
                                      id: 2,
                                      name: 'Pulsa',
                                      imageUrl: 'assets/icon_pulsa.png',
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/paket-data');
                                  },
                                  child: MenuCard(
                                    MenuModel(
                                      id: 3,
                                      name: 'Paket Data',
                                      imageUrl: 'assets/icon_paket_data.png',
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/pascabayar');
                                  },
                                  child: MenuCard(
                                    MenuModel(
                                      id: 4,
                                      name: 'Pascabayar',
                                      imageUrl: 'assets/icon_pascabayar.png',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/pembayaran');
                                  },
                                  child: MenuCard(
                                    MenuModel(
                                      id: 5,
                                      name: 'Pembayaran',
                                      imageUrl: 'assets/icon_pembayaran.png',
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context,
                                        '/uang-elektronik-input-nomor');
                                  },
                                  child: MenuCard(
                                    MenuModel(
                                      id: 6,
                                      name: 'Uang Elektronik',
                                      imageUrl:
                                          'assets/icon_uang_elektronik.png',
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/tagihan');
                                  },
                                  child: MenuCard(
                                    MenuModel(
                                      id: 7,
                                      name: 'Tagihan',
                                      imageUrl: 'assets/icon_tagihan.png',
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, '/transfer-bank');
                                  },
                                  child: MenuCard(
                                    MenuModel(
                                      id: 8,
                                      name: 'Tranfer Bank',
                                      imageUrl: 'assets/icon_transfer_bank.png',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, '/zakat-dan-donasi');
                                  },
                                  child: MenuCard(
                                    MenuModel(
                                      id: 9,
                                      name: 'Zakat dan Donasi',
                                      imageUrl:
                                          'assets/icon_zakat_dan_donasi.png',
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/ambil-uang');
                                  },
                                  child: MenuCard(
                                    MenuModel(
                                      id: 10,
                                      name: 'Ambil Uang',
                                      imageUrl: 'assets/icon_ambil_uang.png',
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                MenuCard(
                                  MenuModel(
                                    id: 11,
                                    name: 'Pajak',
                                    imageUrl: 'assets/icon_pajak.png',
                                  ),
                                ),
                                const Spacer(),
                                const Spacer(),
                                const Spacer(),
                                const Spacer(),
                                const Spacer(),
                              ],
                            ),
                            const SizedBox(height: 18),
                            Text(
                              'Mitra Pake KTP',
                              style: khulaTextStyle.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: blackColor,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, '/mitra-warung');
                                  },
                                  child: MitraCard(
                                    MitraModel(
                                      id: 1,
                                      name: 'Warung',
                                      imageUrl: 'assets/icon_warung.png',
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, '/mitra-gerobak');
                                  },
                                  child: MitraCard(
                                    MitraModel(
                                      id: 2,
                                      name: 'Gerobak',
                                      imageUrl: 'assets/icon_warung.png',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
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
    );
  }
}
