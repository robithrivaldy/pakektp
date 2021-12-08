import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pakektp/theme.dart';

class TagihanRincianTagihanPage extends StatefulWidget {
  const TagihanRincianTagihanPage({Key? key}) : super(key: key);

  @override
  _TagihanRincianTagihanPage createState() => _TagihanRincianTagihanPage();
}

class _TagihanRincianTagihanPage extends State<TagihanRincianTagihanPage> {
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
            'BPJS',
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
                        hintText: 'Nomor Virtual Account',
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
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                    decoration: const BoxDecoration(),
                    child: Text(
                      'Rincian Tagihan',
                      style: khulaTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: blackColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nama',
                              style: khulaTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: blackColor),
                            ),
                            const SizedBox(height: 22),
                            Text(
                              'Nomor',
                              style: khulaTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: blackColor),
                            ),
                            const SizedBox(height: 22),
                            Text(
                              'Jenis Tagihan',
                              style: khulaTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: blackColor),
                            ),
                            const SizedBox(height: 22),
                            Text(
                              'Tagihan',
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
                              'Total Bayar',
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
                              'Username',
                              style: khulaTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: blackColor),
                            ),
                            const SizedBox(height: 22),
                            Text(
                              '9999089898220011',
                              style: khulaTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: blackColor),
                            ),
                            const SizedBox(height: 22),
                            Text(
                              'Bayar Tagihan BPJS Ketenagakerjaan',
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
                                      decimalDigits: 0)
                                  .format(100000),
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
                                      decimalDigits: 0)
                                  .format(500),
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
                                      decimalDigits: 0)
                                  .format(100500),
                              style: khulaTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: blackColor),
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
