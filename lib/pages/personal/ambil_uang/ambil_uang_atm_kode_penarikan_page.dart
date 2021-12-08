import 'package:flutter/material.dart';
import 'package:pakektp/theme.dart';

class AmbilUangAtmKodePenarikanPage extends StatefulWidget {
  const AmbilUangAtmKodePenarikanPage({Key? key}) : super(key: key);

  @override
  _AmbilUangAtmKodePenarikanPage createState() =>
      _AmbilUangAtmKodePenarikanPage();
}

class _AmbilUangAtmKodePenarikanPage
    extends State<AmbilUangAtmKodePenarikanPage> {
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
            'Kode Penarikan',
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
                  Center(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 32,
                        ),
                        Image.asset(
                          'assets/image_kode_penarikan.png',
                          width: MediaQuery.of(context).size.width * 0.70,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.80,
                          decoration: const BoxDecoration(),
                          child: Text(
                            'Kamu akan melakukan tarik tunai uang lewat ATM tanpa kartu, dengan kode',
                            style: khulaTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: blackColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.80,
                          decoration: const BoxDecoration(),
                          child: Text(
                            'kode akan hangus dalam',
                            style: khulaTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: blackColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icon_time.png',
                              width: 20,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              '01:22',
                              style: khulaTextStyle.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: blackColor,
                              ),
                              textAlign: TextAlign.center,
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
      floatingActionButton: Container(
        width: double.infinity,
        height: 60,
        margin: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 16,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(2, 5), // changes position of shadow
            ),
          ],
        ),
        child: InkWell(
          onTap: () {},
          child: Row(
            children: [
              Text(
                'Cara tarik tunai uang lewat ATM',
                style: khulaTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: blackColor,
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              Image.asset(
                'assets/icon_important.png',
                width: 24,
                height: 24,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/ambil-uang-atm-kode-penarikan-detail');
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
            'Selesai',
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
