import 'package:flutter/material.dart';
import 'package:pakektp/theme.dart';

class ZakatNotificationPage extends StatefulWidget {
  const ZakatNotificationPage({Key? key}) : super(key: key);

  @override
  _ZakatNotificationPage createState() => _ZakatNotificationPage();
}

class _ZakatNotificationPage extends State<ZakatNotificationPage> {
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
            'Bayar Zakat',
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
                      height: 48,
                    ),
                    Image.asset(
                      'assets/image_zakat_notification.png',
                      width: 228,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.70,
                      decoration: const BoxDecoration(),
                      child: Text(
                        'Kamu memiliki kewajiban zakat mal, Sebesar',
                        style: khulaTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: blackColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.70,
                      decoration: const BoxDecoration(),
                      child: Text(
                        'Rp. 101.500,00',
                        style: khulaTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 32,
                          color: blackColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(),
                      child: Text(
                        'yang akan dibayarkan melalui lembaga',
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
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        border: Border.all(color: greyColor),
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
                            'Lembaga Zakat',
                            style: khulaTextStyle.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: blackColor,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          const Spacer(),
                          Text(
                            'Ubah',
                            style: khulaTextStyle.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: redColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.70,
                      decoration: const BoxDecoration(),
                      child: Text(
                        'Pilih konfirmasi notifikasi transaksi',
                        style: khulaTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: blackColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/notification-otp');
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.90,
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 42,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icon_notification_otp.png',
                              width: 40,
                            ),
                            const SizedBox(width: 16),
                            Text(
                              'Notifikasi Melalui OTP',
                              style: khulaTextStyle.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: blackColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.90,
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 30,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icon_notification_face.png',
                            width: 40,
                          ),
                          const SizedBox(width: 16),
                          Text(
                            'Notifikasi Melalui Face Recognition',
                            style: khulaTextStyle.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.90,
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 42,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icon_notification_pin.png',
                            width: 40,
                          ),
                          const SizedBox(width: 16),
                          Text(
                            'Notifikasi Melalui PIN',
                            style: khulaTextStyle.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: blackColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
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
