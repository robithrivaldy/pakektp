import 'package:flutter/material.dart';
import 'package:pakektp/models/bank_model.dart';
import 'package:pakektp/theme.dart';
import 'package:pakektp/widgets/bank_card.dart';

class IsiSaldoBankPage extends StatefulWidget {
  const IsiSaldoBankPage({Key? key}) : super(key: key);

  @override
  _IsiSaldoBankPage createState() => _IsiSaldoBankPage();
}

class _IsiSaldoBankPage extends State<IsiSaldoBankPage> {
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
            'Isi Saldo PakeKTP',
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
                children: [
                  Container(
                    width: double.infinity,
                    height: 60,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
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
                        Image.asset(
                          'assets/bullet_pink.png',
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Bank Virtual Account',
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
                  BankCard(
                    BankModel(
                        id: 1,
                        name: 'Bank Central Asia (BCA)',
                        imageUrl: 'assets/bullet_pink.png'),
                  ),
                  BankCard(
                    BankModel(
                        id: 2,
                        name: 'Bank Rakyat Indonesia (BRI)',
                        imageUrl: 'assets/bullet_pink.png'),
                  ),
                  BankCard(
                    BankModel(
                        id: 3,
                        name: 'Bank Mandiri',
                        imageUrl: 'assets/bullet_pink.png'),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
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
                        Image.asset(
                          'assets/bullet_pink.png',
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Agen PakeKTP',
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
                  BankCard(
                    BankModel(
                        id: 1,
                        name: 'Bank Central Asia (BCA)',
                        imageUrl: 'assets/bullet_pink.png'),
                  ),
                  BankCard(
                    BankModel(
                        id: 2,
                        name: 'Bank Rakyat Indonesia (BRI)',
                        imageUrl: 'assets/bullet_pink.png'),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
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
                        Image.asset(
                          'assets/bullet_pink.png',
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Mitra PakeKTP',
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
                  BankCard(
                    BankModel(
                        id: 1,
                        name: 'Gerobak Mitra',
                        imageUrl: 'assets/bullet_pink.png'),
                  ),
                  BankCard(
                    BankModel(
                        id: 2,
                        name: 'Warung Mitra',
                        imageUrl: 'assets/bullet_pink.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/isi-saldo-detail');
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
