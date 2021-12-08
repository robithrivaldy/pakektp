import 'package:flutter/material.dart';
import 'package:pakektp/theme.dart';

class ZakatHitungZakatPage extends StatefulWidget {
  const ZakatHitungZakatPage({Key? key}) : super(key: key);

  @override
  _ZakatHitungZakatPage createState() => _ZakatHitungZakatPage();
}

class _ZakatHitungZakatPage extends State<ZakatHitungZakatPage> {
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
            'Hitung Zakat',
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
                      horizontal: 28,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(),
                          child: Text(
                            'Masukkan simpanan harta yang telah kamu miliki selama 1 tahun Hijriyah (isi min 1 kolom)',
                            style: khulaTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: blackColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Nominal Tabungan (Deposito dan Giro)',
                          style: khulaTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: blackColor),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4,
                            horizontal: 10,
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
                          child: TextField(
                            autocorrect: true,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Masukkan Nominal Tabungan',
                              hintStyle: khulaTextStyle.copyWith(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                borderSide:
                                    BorderSide(color: whiteColor, width: 1.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                borderSide:
                                    BorderSide(color: whiteColor, width: 1.5),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Nominal Surat Berharga',
                          style: khulaTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: blackColor),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4,
                            horizontal: 10,
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
                          child: TextField(
                            autocorrect: true,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Masukkan Nominal Surat Berharga',
                              hintStyle: khulaTextStyle.copyWith(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                borderSide:
                                    BorderSide(color: whiteColor, width: 1.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                borderSide:
                                    BorderSide(color: whiteColor, width: 1.5),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        Text(
                          'Nominal Nilai Aset',
                          style: khulaTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: blackColor),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4,
                            horizontal: 10,
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
                          child: TextField(
                            autocorrect: true,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Masukkan Nominal Nilai Aset',
                              hintStyle: khulaTextStyle.copyWith(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                borderSide:
                                    BorderSide(color: whiteColor, width: 1.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                borderSide:
                                    BorderSide(color: whiteColor, width: 1.5),
                              ),
                            ),
                          ),
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
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/zakat-bayar-zakat');
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
            'Konfirmasi',
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
