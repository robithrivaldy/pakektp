import 'package:flutter/material.dart';
import 'package:pakektp/models/pembayaran_model.dart';

import 'package:pakektp/theme.dart';
import 'package:pakektp/widgets/pembayaran_card.dart';

class TagihanPage extends StatefulWidget {
  const TagihanPage({Key? key}) : super(key: key);

  @override
  _TagihanPage createState() => _TagihanPage();
}

class _TagihanPage extends State<TagihanPage> {
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
            'Tagihan',
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
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/tagihan-pilih-layanan');
                    },
                    child: PembayaranCard(
                      PembayaranModel(
                        id: 1,
                        name: 'BPJS',
                        imageUrl: 'assets/bullet_pink.png',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/tagihan-pilih-layanan');
                    },
                    child: PembayaranCard(
                      PembayaranModel(
                        id: 2,
                        name: 'PDAM',
                        imageUrl: 'assets/bullet_pink.png',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/tagihan-pilih-layanan');
                    },
                    child: PembayaranCard(
                      PembayaranModel(
                        id: 3,
                        name: 'TV Kabel',
                        imageUrl: 'assets/bullet_pink.png',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/tagihan-pilih-layanan');
                    },
                    child: PembayaranCard(
                      PembayaranModel(
                        id: 4,
                        name: 'Internet',
                        imageUrl: 'assets/bullet_pink.png',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/tagihan-pilih-layanan');
                    },
                    child: PembayaranCard(
                      PembayaranModel(
                        id: 5,
                        name: 'Kartu Kredit',
                        imageUrl: 'assets/bullet_pink.png',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/tagihan-pilih-layanan');
                    },
                    child: PembayaranCard(
                      PembayaranModel(
                        id: 6,
                        name: 'Gas PGN',
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
