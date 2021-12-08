import 'package:flutter/material.dart';
import 'package:pakektp/theme.dart';

class DonasiPilihLembagaPage extends StatefulWidget {
  const DonasiPilihLembagaPage({Key? key}) : super(key: key);

  @override
  _DonasiPilihLembagaPage createState() => _DonasiPilihLembagaPage();
}

enum pilihLembaga { lembagaZakat1, lembagaZakat2 }

class _DonasiPilihLembagaPage extends State<DonasiPilihLembagaPage> {
  pilihLembaga? character = pilihLembaga.lembagaZakat1;
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
            'Donasi',
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
                        Text(
                          'Nama (Optional)',
                          style: khulaTextStyle.copyWith(
                              fontSize: 20,
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
                              hintText: 'Masukkan Nama',
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
                          'Nominal',
                          style: khulaTextStyle.copyWith(
                              fontSize: 20,
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
                              hintText: 'Masukkan Nominal',
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
                  const SizedBox(
                    height: 18,
                  ),
                  Container(
                    decoration: const BoxDecoration(),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 18,
                    ),
                    child: TextField(
                      onTap: () {},
                      autocorrect: true,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: ' Cari lembaga donasi',
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
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100.0)),
                          borderSide: BorderSide(color: blackColor, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100.0)),
                          borderSide: BorderSide(color: pinkColor, width: 1),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      border: Border.all(color: greyColor),
                    ),
                    child: Row(
                      children: [
                        Radio<pilihLembaga>(
                          value: pilihLembaga.lembagaZakat1,
                          groupValue: character,
                          focusColor: redColor,
                          activeColor: blackColor,
                          onChanged: (pilihLembaga? value) {
                            setState(() {
                              character = value;
                            });
                          },
                        ),
                        Image.asset(
                          'assets/bullet_pink.png',
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Lembaga Donasi',
                          style: khulaTextStyle.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: blackColor,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const Spacer(),
                        InkWell(
                          child: Image.asset('assets/btn_down.png', width: 30),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      border: Border.all(color: greyColor),
                    ),
                    child: Row(
                      children: [
                        Radio<pilihLembaga>(
                          value: pilihLembaga.lembagaZakat2,
                          groupValue: character,
                          focusColor: redColor,
                          activeColor: blackColor,
                          onChanged: (pilihLembaga? value) {
                            setState(() {
                              character = value;
                            });
                          },
                        ),
                        Image.asset(
                          'assets/bullet_pink.png',
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Lembaga Donasi',
                          style: khulaTextStyle.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: blackColor,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const Spacer(),
                        InkWell(
                          child: Image.asset('assets/btn_down.png', width: 30),
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
          Navigator.pushNamed(context, '/donasi-notification');
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
