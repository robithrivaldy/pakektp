import 'package:flutter/material.dart';
import 'package:pakektp/theme.dart';

class MitraWarungAddLocationPage extends StatefulWidget {
  const MitraWarungAddLocationPage({Key? key}) : super(key: key);

  @override
  _MitraWarungAddLocationPage createState() => _MitraWarungAddLocationPage();
}

class _MitraWarungAddLocationPage extends State<MitraWarungAddLocationPage> {
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
            'Warung',
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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 14,
                    ),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(20),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/image_warung.png',
                          width: 90,
                          height: 90,
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 200,
                              decoration: const BoxDecoration(),
                              child: Text(
                                'Warung  Kelontong Ibu Elissss',
                                style: khulaTextStyle.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: blackColor,
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              decoration: const BoxDecoration(),
                              child: Text(
                                'Jl. M.H. Thamrin No.Kav. 28-30, Gondangdia, Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10350',
                                style: khulaTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 14,
                    ),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(20),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/image_warung.png',
                          width: 90,
                          height: 90,
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 200,
                              decoration: const BoxDecoration(),
                              child: Text(
                                'Warung  Kelontong Ibu Elissss',
                                style: khulaTextStyle.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: blackColor,
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              decoration: const BoxDecoration(),
                              child: Text(
                                'Jl. M.H. Thamrin No.Kav. 28-30, Gondangdia, Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10350',
                                style: khulaTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
