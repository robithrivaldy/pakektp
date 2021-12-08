import 'package:flutter/material.dart';
import 'package:pakektp/theme.dart';

class AmbilUangPage extends StatefulWidget {
  const AmbilUangPage({Key? key}) : super(key: key);

  @override
  _AmbilUangPage createState() => _AmbilUangPage();
}

class _AmbilUangPage extends State<AmbilUangPage> {
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
            'Ambil Uang',
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
                      Navigator.pushNamed(context, '/ambil-uang-mitra-scan');
                    },
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 16,
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 98,
                      ),
                      decoration: BoxDecoration(
                        color: greyColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Ambil Mitra',
                          style: khulaTextStyle.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: blackColor,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/ambil-uang-atm-nominal');
                    },
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 16,
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 98,
                      ),
                      decoration: BoxDecoration(
                        color: greyColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Lewat ATM,\ntanpa Kartu',
                          style: khulaTextStyle.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: blackColor,
                          ),
                          textAlign: TextAlign.start,
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
    );
  }
}
