import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pakektp/pages/personal/camera_ktp_page.dart';
import 'package:pakektp/pages/personal/camera_ktp_person_page.dart';
import 'package:pakektp/theme.dart';

class SignUpPersonalPage extends StatefulWidget {
  const SignUpPersonalPage({Key? key}) : super(key: key);
  @override
  _SignUpPersonalPage createState() => _SignUpPersonalPage();
}

class _SignUpPersonalPage extends State<SignUpPersonalPage> {
  bool isChecked = false;

  File? imageFileKtp;
  File? imageFileKtpPerson;

  Widget imageViewKtp() {
    if (imageFileKtp == null) {
      return InkWell(
        onTap: () async {
          imageFileKtp = await Navigator.push<File>(context,
              MaterialPageRoute(builder: (_) => const CameraKtpPage()));
          setState(() {});
        },
        child: Image.asset(
          'assets/thumbnail_upload_photo_ktp.png',
        ),
      );
    } else {
      return InkWell(
        onTap: () async {
          imageFileKtp = await Navigator.push<File>(context,
              MaterialPageRoute(builder: (_) => const CameraKtpPage()));
          setState(() {});
        },
        child: RotationTransition(
          turns: const AlwaysStoppedAnimation(-90 / 360),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: FileImage(imageFileKtp!),
              ),
            ),
          ),
        ),
      );
    }
  }

  Widget imageViewKtpPerson() {
    if (imageFileKtpPerson == null) {
      return InkWell(
        onTap: () async {
          imageFileKtpPerson = await Navigator.push<File>(context,
              MaterialPageRoute(builder: (_) => const CameraKtpPersonPage()));
          setState(() {});
        },
        child: Image.asset(
          'assets/thumbnail_upload_photo_ktp.png',
        ),
      );
    } else {
      return InkWell(
        onTap: () async {
          imageFileKtpPerson = await Navigator.push<File>(context,
              MaterialPageRoute(builder: (_) => const CameraKtpPersonPage()));
          setState(() {});
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: FileImage(imageFileKtpPerson!),
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.green;
      }
      return Colors.green;
    }

    return Scaffold(
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
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: greyColor,
                    ),
                    child: Column(
                      children: [
                        Text(
                          'DAFTAR',
                          style: khulaTextStyle.copyWith(
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Sebagai Pengguna Personal',
                          style: khulaTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 34,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Foto KTP',
                          style: khulaTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: blackColor),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: double.infinity,
                          height: 170,
                          padding: const EdgeInsets.symmetric(
                            vertical: 22,
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
                          child: imageViewKtp(),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'NIK',
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
                              hintText: 'Masukkan nomor NIK',
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
                          'Nama Lengkap',
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
                              hintText: 'Masukkan nama lengkap',
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
                          'PIN',
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
                            obscureText: true,
                            autocorrect: true,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Masukkan PIN',
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
                          'Konfirmasi PIN',
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
                            obscureText: true,
                            autocorrect: true,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Masukkan konfirmasi PIN',
                              hintStyle: khulaTextStyle.copyWith(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
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
                          'Foto Diri Beserta KTP',
                          style: khulaTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: blackColor),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: double.infinity,
                          height: 170,
                          padding: const EdgeInsets.symmetric(
                            vertical: 22,
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
                          child: imageViewKtpPerson(),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.70,
                              child: Text(
                                'Dengan ini, data yang dimasukan adalah benar dan menyetujui Syarat dan Ketentuan yang berlaku dari pakeKTP',
                                style: khulaTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: blackColor,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.50,
                          height: 70,
                          padding: const EdgeInsets.symmetric(
                            vertical: 18,
                          ),
                          decoration: BoxDecoration(
                            color: whiteColor,
                            border: Border.all(color: blackColor),
                          ),
                          child: Text(
                            'Batalkan',
                            style: khulaTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: blackColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.50,
                          height: 70,
                          padding: const EdgeInsets.symmetric(
                            vertical: 18,
                          ),
                          decoration: BoxDecoration(
                            color: greyColor,
                            border: Border.all(color: greyColor),
                          ),
                          child: Text(
                            'Konfirmasi',
                            style: khulaTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: blackColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
