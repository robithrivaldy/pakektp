import 'package:flutter/material.dart';
import 'package:pakektp/theme.dart';

class SignInPersonalPage extends StatelessWidget {
  const SignInPersonalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 6,
                    ),
                    Center(
                      child: Image.asset(
                        'assets/personal_avatar.png',
                        height: MediaQuery.of(context).size.height * 0.20,
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Text(
                      'Sebagai pengguna personal',
                      style: khulaTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: blackColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.65,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          image: DecorationImage(
            image: AssetImage('assets/background_red.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 12,
            ),
            Text(
              'No. Telp',
              style: khulaTextStyle.copyWith(
                  fontSize: 20, fontWeight: FontWeight.w600, color: whiteColor),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                autocorrect: true,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: '  Masukkan nomor telpon',
                  hintStyle: khulaTextStyle.copyWith(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: whiteColor, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: whiteColor, width: 1.5),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'PIN',
              style: khulaTextStyle.copyWith(
                  fontSize: 20, fontWeight: FontWeight.w600, color: whiteColor),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                obscureText: true,
                autocorrect: true,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: '  Masukkan PIN',
                  hintStyle: khulaTextStyle.copyWith(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: whiteColor, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: whiteColor, width: 1.5),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              width: double.infinity,
              height: 60,
              // ignore: deprecated_member_use
              child: RaisedButton(
                elevation: 0,
                hoverElevation: 0,
                focusElevation: 0,
                highlightElevation: 0,
                onPressed: () {
                  Navigator.pushNamed(context, '/main-personal');
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: greenColor,
                child: Text(
                  'Masuk',
                  style: khulaTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: whiteColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Masuk dengan pilihan lain',
                  style: khulaTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: whiteColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/icon_scan_barcode_yellow.png',
                    width: 60,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/icon_fingerprint_yellow.png',
                    width: 60,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Apakah anda belum memiliki akun?',
                  style: khulaTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: whiteColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/sign-up-personal');
                  },
                  child: Text(
                    'Daftar Sekarang',
                    style: khulaTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: whiteColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
