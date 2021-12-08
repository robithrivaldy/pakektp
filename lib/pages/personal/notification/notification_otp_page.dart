import 'package:flutter/material.dart';
import 'package:pakektp/pages/personal/transaction_success/transaction_success_page.dart';
import 'package:pakektp/theme.dart';

class NotificationOtpPage extends StatefulWidget {
  const NotificationOtpPage({Key? key}) : super(key: key);

  @override
  _NotificationOtpPage createState() => _NotificationOtpPage();
}

class _NotificationOtpPage extends State<NotificationOtpPage> {
  Widget textFieldOTP({required bool first, last}) {
    return Container(
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white,
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
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
            // Jika OTP Terakhir Diisi maka akan redirect ke halaman transaksi sukses
            if (value.length == 1 && last == true) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TransactionSuccessPage(),
                ),
              );
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: whiteColor),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: whiteColor),
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }

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
            'Pilih Notifikasi Transaksi',
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
                  children: [
                    const SizedBox(
                      height: 32,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.70,
                      decoration: const BoxDecoration(),
                      child: Text(
                        'Masukkan kode nomor OTP yang dikirimkan kenomor',
                        style: khulaTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: blackColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.70,
                      decoration: const BoxDecoration(),
                      child: Text(
                        '**** **** 0077',
                        style: khulaTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: blackColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(28),
                      decoration: const BoxDecoration(),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              textFieldOTP(first: true, last: false),
                              textFieldOTP(first: false, last: false),
                              textFieldOTP(first: false, last: false),
                              textFieldOTP(first: false, last: true),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
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
                    const SizedBox(
                      height: 42,
                    ),
                    Text(
                      'Tidak Menerima Kode?',
                      style: khulaTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: blackColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Kirim Ulang',
                        style: khulaTextStyle.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: redColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
