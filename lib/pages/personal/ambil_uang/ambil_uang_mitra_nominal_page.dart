import 'package:flutter/material.dart';
import 'package:pakektp/theme.dart';

class AmbilUangMitraNominalPage extends StatefulWidget {
  const AmbilUangMitraNominalPage({Key? key}) : super(key: key);

  @override
  _AmbilUangMitraNominalPage createState() => _AmbilUangMitraNominalPage();
}

class _AmbilUangMitraNominalPage extends State<AmbilUangMitraNominalPage> {
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
            SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/image_mitra.png',
                      width: 280,
                      height: 280,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.90,
                      decoration: const BoxDecoration(),
                      child: Text(
                        'Kamu akan melakukan tarik tunai uang lewat mitra pakeKTP,',
                        style: khulaTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: blackColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.90,
                      decoration: const BoxDecoration(),
                      child: Text(
                        'Warung Pak Joe',
                        style: khulaTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 32,
                          color: blackColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.90,
                      decoration: const BoxDecoration(),
                      child: Text(
                        'silahkan masukkan nominal yang akan diambil dengan kelipatan Rp 5.000,00',
                        style: khulaTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: blackColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 16),
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
                      height: 140,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/notification');
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
