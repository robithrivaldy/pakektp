import 'package:flutter/material.dart';
import 'package:pakektp/theme.dart';

class TagihanPilihLayananPage extends StatefulWidget {
  const TagihanPilihLayananPage({Key? key}) : super(key: key);

  @override
  _TagihanPilihLayananPage createState() => _TagihanPilihLayananPage();
}

class _TagihanPilihLayananPage extends State<TagihanPilihLayananPage> {
  bool isVisible1 = false;
  bool isVisible2 = false;

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
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 14,
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
                        Text(
                          'Jenis BPJS',
                          style: khulaTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: greyColor,
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            openVisible1();
                          },
                          child: Image.asset(
                            'assets/btn_down.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: isVisible1,
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            vertical: 14,
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                            color: whiteColor,
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
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/bullet_pink.png',
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Kelas 1',
                                style: khulaTextStyle.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: greyColor,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            vertical: 14,
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                            color: whiteColor,
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
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/bullet_pink.png',
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Kelas 2',
                                style: khulaTextStyle.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: greyColor,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            vertical: 14,
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                            color: whiteColor,
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
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/bullet_pink.png',
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Kelas 3',
                                style: khulaTextStyle.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: greyColor,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 14,
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
                        Text(
                          'Bayar Hingga',
                          style: khulaTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: greyColor,
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            openVisible2();
                          },
                          child: Image.asset(
                            'assets/btn_down.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: isVisible2,
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            vertical: 14,
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                            color: whiteColor,
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
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/bullet_pink.png',
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Oktober 2021',
                                style: khulaTextStyle.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: greyColor,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            vertical: 14,
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                            color: whiteColor,
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
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/bullet_pink.png',
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                'November 2021',
                                style: khulaTextStyle.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: greyColor,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            vertical: 14,
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                            color: whiteColor,
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
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/bullet_pink.png',
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Desember 2021',
                                style: khulaTextStyle.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: greyColor,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
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
                    height: 26,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    decoration: const BoxDecoration(),
                    child: Text(
                      'Rincihan Tagihan',
                      style: khulaTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: blackColor),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
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
          Navigator.pushNamed(context, '/tagihan-input-nomor');
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
