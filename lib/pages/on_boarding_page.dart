import 'package:flutter/material.dart';
import 'package:pakektp/models/boarding_model.dart';
import 'package:pakektp/theme.dart';
import 'package:pakektp/widgets/boarding_card.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPage();
}

class _OnBoardingPage extends State<OnBoardingPage> {
  int selectedItem = 0;

  var pages = [
    BoardingCard(
      BoardingModel(
          id: 1,
          imageUrl: 'assets/boarding_image1.png',
          title: 'Mudah Digunakan',
          caption:
              'pake KTP mudah digunakan oleh semua jenis kalangan, hanya dengan e-KTP, Anda sudah bisa membuat akun dan menikmati fitur pake-ktp'),
    ),
    BoardingCard(
      BoardingModel(
        id: 2,
        imageUrl: 'assets/boarding_image2.png',
        title: 'Cepat Untuk Semua Transaksi',
        caption:
            'Semua fitur yang tersedia dapat dinikmati dengan proses yang cepat',
      ),
    ),
    BoardingCard(
      BoardingModel(
          id: 3,
          imageUrl: 'assets/boarding_image3.png',
          title: 'Aman Digunakan',
          caption:
              'Data diri dan segala transaksi terjamin keamanannya, semua transaksi terkoneksi dengan nomor NIK Anda'),
    ),
  ];

  var controller = PageController();

  void changeBoarding() {
    setState(() {
      if (selectedItem < 3) {
        selectedItem = selectedItem + 1;
      }
      controller.animateToPage(selectedItem,
          duration: const Duration(milliseconds: 200), curve: Curves.linear);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                Expanded(
                  child: PageView(
                    children: pages,
                    onPageChanged: (index) {
                      setState(() {
                        selectedItem = index;
                      });
                    },
                    controller: controller,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 66,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 34),
        decoration: BoxDecoration(
          color: blackColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/sign-in');
              },
              child: Text(
                'Lewati ',
                style: khulaTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: whiteColor,
                ),
              ),
            ),
            selectedItem == 2
                ? InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/sign-in');
                    },
                    child: Text(
                      'Masuk',
                      style: khulaTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: whiteColor,
                      ),
                    ),
                  )
                : InkWell(
                    onTap: () {
                      changeBoarding();
                    },
                    child: Image.asset(
                      'assets/btn_right.png',
                      width: 34,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
