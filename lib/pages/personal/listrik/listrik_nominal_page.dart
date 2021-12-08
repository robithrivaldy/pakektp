import 'package:flutter/material.dart';
import 'package:pakektp/models/nominal_model.dart';

import 'package:pakektp/theme.dart';
import 'package:pakektp/widgets/nominal_card.dart';

class ListrikNominalPage extends StatefulWidget {
  const ListrikNominalPage({Key? key}) : super(key: key);

  @override
  _ListrikNominalPage createState() => _ListrikNominalPage();
}

class _ListrikNominalPage extends State<ListrikNominalPage> {
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
            'Token Listrik',
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
                        hintText: 'Input No. Pelanggan/Meter',
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
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    decoration: const BoxDecoration(),
                    child: Text(
                      'Pilih Nominal',
                      style: khulaTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: blackColor),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/notification');
                    },
                    child: NominalCard(
                      NominalModel(
                        id: 1,
                        name: 'Token listrik 10.000',
                        description: '',
                        price: 13000,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/notification');
                    },
                    child: NominalCard(
                      NominalModel(
                        id: 2,
                        name: 'Token listrik 20.000',
                        description: '',
                        price: 23000,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/notification');
                    },
                    child: NominalCard(
                      NominalModel(
                        id: 3,
                        name: 'Token listrik 30.000',
                        description: '',
                        price: 33000,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/notification');
                    },
                    child: NominalCard(
                      NominalModel(
                        id: 4,
                        name: 'Token listrik 40.000',
                        description: '',
                        price: 42000,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/notification');
                    },
                    child: NominalCard(
                      NominalModel(
                        id: 5,
                        name: 'Token listrik 50.000',
                        description: '',
                        price: 52000,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/notification');
                    },
                    child: NominalCard(
                      NominalModel(
                        id: 6,
                        name: 'Token listrik 100.000',
                        description: '',
                        price: 101500,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/notification');
                    },
                    child: NominalCard(
                      NominalModel(
                        id: 7,
                        name: 'Token listrik 200.000',
                        description: '',
                        price: 200500,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/notification');
                    },
                    child: NominalCard(
                      NominalModel(
                        id: 8,
                        name: 'Token listrik 250.000',
                        description: '',
                        price: 250500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(color: redColor.withOpacity(0.1)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.80,
              decoration: const BoxDecoration(),
              child: Text(
                '1. Mohon perhatian bahwa terdapat batas pembelian untuk token PLN\n2.Transaksi produk PLN yang dilakukan pada 23:40-00:20 akan diproses pada 00:45\n3. Proses verifikasi maksimal 2x24 jam hari kerja\n4. Untuk info lebih lanjut silahkan hubungi PLN di (021)123',
                style: khulaTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            const Spacer(),
            Image.asset('assets/icon_warning.png', width: 22),
          ],
        ),
      ),
    );
  }
}
