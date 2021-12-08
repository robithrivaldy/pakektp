import 'package:flutter/material.dart';
import 'package:pakektp/theme.dart';

class AmbilUangAtmNominalPage extends StatefulWidget {
  const AmbilUangAtmNominalPage({Key? key}) : super(key: key);

  @override
  _AmbilUangAtmNominalPage createState() => _AmbilUangAtmNominalPage();
}

class _AmbilUangAtmNominalPage extends State<AmbilUangAtmNominalPage> {
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
            'Ambil Uang Lewat ATM',
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
                          height: 12,
                        ),
                        Text(
                          'Masukkan hanya kelipatan Rp 100.000,00',
                          style: khulaTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: blackColor),
                        ),
                        const SizedBox(
                          height: 12,
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
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pilih Nominal Penarikan',
                          style: khulaTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: blackColor,
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              padding: const EdgeInsets.all(18),
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
                              child: Text(
                                'Rp 100.000,00',
                                style: khulaTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: blackColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              padding: const EdgeInsets.all(18),
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
                              child: Text(
                                'Rp 200.000,00',
                                style: khulaTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: blackColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              padding: const EdgeInsets.all(18),
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
                              child: Text(
                                'Rp 500.000,00',
                                style: khulaTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: blackColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              padding: const EdgeInsets.all(18),
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
                              child: Text(
                                'Rp 700.000,00',
                                style: khulaTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: blackColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              padding: const EdgeInsets.all(18),
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
                              child: Text(
                                'Rp 1.000.000,00',
                                style: khulaTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: blackColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              padding: const EdgeInsets.all(18),
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
                              child: Text(
                                'Rp 1.200.000,00',
                                style: khulaTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: blackColor,
                                ),
                                textAlign: TextAlign.center,
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
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/ambil-uang-atm-rincian');
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
