import 'package:flutter/material.dart';
import 'package:pakektp/models/pembayaran_model.dart';

import 'package:pakektp/theme.dart';
import 'package:pakektp/widgets/pembayaran_card.dart';

class PembayaranPage extends StatefulWidget {
  const PembayaranPage({Key? key}) : super(key: key);

  @override
  _PembayaranPage createState() => _PembayaranPage();
}

class _PembayaranPage extends State<PembayaranPage> {
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
            'Pembayaran',
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
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/pembayaran-pilih-layanan');
                    },
                    child: PembayaranCard(
                      PembayaranModel(
                        id: 1,
                        name: 'E-Voucher',
                        imageUrl: 'assets/bullet_pink.png',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/pembayaran-pilih-layanan');
                    },
                    child: PembayaranCard(
                      PembayaranModel(
                        id: 2,
                        name: 'Tiket Kereta Api',
                        imageUrl: 'assets/bullet_pink.png',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/pembayaran-pilih-layanan');
                    },
                    child: PembayaranCard(
                      PembayaranModel(
                        id: 3,
                        name: 'Tiket Pesawat',
                        imageUrl: 'assets/bullet_pink.png',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/pembayaran-pilih-layanan');
                    },
                    child: PembayaranCard(
                      PembayaranModel(
                        id: 4,
                        name: 'Tiket Bioskop',
                        imageUrl: 'assets/bullet_pink.png',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/pembayaran-pilih-layanan');
                    },
                    child: PembayaranCard(
                      PembayaranModel(
                        id: 5,
                        name: 'Tiket Bus Travel',
                        imageUrl: 'assets/bullet_pink.png',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/pembayaran-pilih-layanan');
                    },
                    child: PembayaranCard(
                      PembayaranModel(
                        id: 4,
                        name: 'Pendidikan',
                        imageUrl: 'assets/bullet_pink.png',
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
