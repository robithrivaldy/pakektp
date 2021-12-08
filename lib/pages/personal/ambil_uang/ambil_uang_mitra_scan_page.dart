import 'package:flutter/material.dart';
import 'package:pakektp/theme.dart';

class AmbilUangMitraScanPage extends StatefulWidget {
  const AmbilUangMitraScanPage({Key? key}) : super(key: key);

  @override
  _AmbilUangMitraScanPage createState() => _AmbilUangMitraScanPage();
}

class _AmbilUangMitraScanPage extends State<AmbilUangMitraScanPage> {
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
            'Ambil Uang Lewat Mitra',
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
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/ambil-uang-mitra-nominal');
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 440,
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        color: redColor,
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'USER NAME',
                            style: khulaTextStyle.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: whiteColor,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Image.asset(
                            'assets/image_qr_code.png',
                            width: 280,
                            height: 280,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            '**** **** 0077',
                            style: khulaTextStyle.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: whiteColor,
                            ),
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
    );
  }
}
