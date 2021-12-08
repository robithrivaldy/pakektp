import 'package:flutter/material.dart';

import 'package:pakektp/theme.dart';

class PascabayarPage extends StatefulWidget {
  const PascabayarPage({Key? key}) : super(key: key);

  @override
  _PascabayarPage createState() => _PascabayarPage();
}

class _PascabayarPage extends State<PascabayarPage> {
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
            'Pascabayar',
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
                    height: 60,
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/bullet_pink.png',
                          width: 22,
                          height: 22,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Jenis Operator',
                          style: khulaTextStyle.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: blackColor,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
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
                      onTap: () {
                        Navigator.pushNamed(context, '/pascabayar-input-nomor');
                      },
                      autocorrect: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: 'Input Nomor Kontak',
                        suffixIcon: Image.asset(
                          'assets/icon_contact.png',
                          width: 40,
                        ),
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
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    decoration: const BoxDecoration(),
                    child: Text(
                      'Pilih Nominal',
                      style: khulaTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: blackColor),
                    ),
                  ),
                  const SizedBox(height: 128),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.80,
                      padding: const EdgeInsets.all(32),
                      decoration: BoxDecoration(
                        color: redColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Image.asset('assets/icon_warning.png', width: 22),
                          const SizedBox(
                            height: 22,
                          ),
                          Text(
                            'Tidak ditemukan tagihan',
                            style: khulaTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: blackColor),
                          ),
                        ],
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
          Navigator.pushNamed(context, '/pascabayar-input-nomor');
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
