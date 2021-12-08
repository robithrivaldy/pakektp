import 'package:flutter/material.dart';
import 'package:pakektp/theme.dart';

class UangElektronikInputNomorPage extends StatefulWidget {
  const UangElektronikInputNomorPage({Key? key}) : super(key: key);

  @override
  _UangElektronikInputNomorPage createState() =>
      _UangElektronikInputNomorPage();
}

class _UangElektronikInputNomorPage
    extends State<UangElektronikInputNomorPage> {
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
            'Uang Elektronik',
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
                          'Jenis Kartu',
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
                      autocorrect: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: 'Input Nomor Kontak',
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
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 140,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/uang-elektronik-saldo');
              },
              child: Container(
                width: double.infinity,
                height: 70,
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                decoration: BoxDecoration(
                  color: whiteColor,
                  border: Border.all(color: blackColor),
                ),
                child: Text(
                  'Cek Saldo',
                  style: khulaTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: blackColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/isi-saldo');
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
                  'Isi Saldo',
                  style: khulaTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: blackColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
