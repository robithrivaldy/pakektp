import 'package:flutter/material.dart';
import 'package:pakektp/theme.dart';

class MintaSaldoSendPage extends StatefulWidget {
  const MintaSaldoSendPage({Key? key}) : super(key: key);

  @override
  _MintaSaldoSendPage createState() => _MintaSaldoSendPage();
}

class _MintaSaldoSendPage extends State<MintaSaldoSendPage> {
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
            'Minta Saldo PakeKTP',
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
            Column(
              children: [
                const SizedBox(
                  height: 26,
                ),
                Text(
                  'Kirim permintaan saldo ke teman',
                  style: khulaTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: blackColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 26,
                      ),
                      Text(
                        'No. Telp',
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
                            hintText: 'Masukkan No Telpon Teman',
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
                        height: 20,
                      ),
                      Text(
                        'Pesan (Optional)',
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
                            hintText: 'Masukkan Pesan',
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
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/minta-saldo-process');
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
            'Kirim',
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
