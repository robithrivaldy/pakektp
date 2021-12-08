import 'package:flutter/material.dart';
import 'package:pakektp/theme.dart';

class NotificationPinPage extends StatefulWidget {
  const NotificationPinPage({Key? key}) : super(key: key);

  @override
  _NotificationPinPage createState() => _NotificationPinPage();
}

class _NotificationPinPage extends State<NotificationPinPage> {
  var selectedindex = 0;
  String code = '';

  addDigit(int digit) {
    if (code.length > 5) {
      return;
    }
    setState(() {
      code = code + digit.toString();
      // ignore: avoid_print
      print('Code is $code');
      selectedindex = code.length;
    });
  }

  backspace() {
    if (code.isEmpty) {
      return;
    }
    setState(() {
      code = code.substring(0, code.length - 1);
      selectedindex = code.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
            'Notifikasi PIN',
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
                  const SizedBox(
                    height: 32,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.70,
                    decoration: const BoxDecoration(),
                    child: Text(
                      'Masukkan kode PIN Anda',
                      style: khulaTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: blackColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: height * 0.7,
                    width: width,
                    decoration: const BoxDecoration(),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Digit(DigitModel(
                                    width: width,
                                    index: 0,
                                    selectedIndex: selectedindex,
                                    code: code,
                                  )),
                                  Digit(
                                    DigitModel(
                                        width: width,
                                        index: 1,
                                        selectedIndex: selectedindex,
                                        code: code),
                                  ),
                                  Digit(
                                    DigitModel(
                                        width: width,
                                        index: 2,
                                        selectedIndex: selectedindex,
                                        code: code),
                                  ),
                                  Digit(
                                    DigitModel(
                                        width: width,
                                        index: 3,
                                        selectedIndex: selectedindex,
                                        code: code),
                                  ),
                                  Digit(
                                    DigitModel(
                                        width: width,
                                        index: 4,
                                        selectedIndex: selectedindex,
                                        code: code),
                                  ),
                                  Digit(
                                    DigitModel(
                                        width: width,
                                        index: 5,
                                        selectedIndex: selectedindex,
                                        code: code),
                                  ),
                                ],
                              )),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            alignment: Alignment.center,
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: TextButton(
                                            onPressed: () {
                                              addDigit(1);
                                            },
                                            child: Text(
                                              '1',
                                              style: khulaTextStyle.copyWith(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 32,
                                                color: blackColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: TextButton(
                                            onPressed: () {
                                              addDigit(2);
                                            },
                                            child: Text(
                                              '2',
                                              style: khulaTextStyle.copyWith(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 32,
                                                color: blackColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: TextButton(
                                            onPressed: () {
                                              addDigit(3);
                                            },
                                            child: Text(
                                              '3',
                                              style: khulaTextStyle.copyWith(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 32,
                                                color: blackColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Container(
                                  decoration: const BoxDecoration(),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: TextButton(
                                          onPressed: () {
                                            addDigit(4);
                                          },
                                          child: Text(
                                            '4',
                                            style: khulaTextStyle.copyWith(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 32,
                                              color: blackColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: TextButton(
                                          onPressed: () {
                                            addDigit(5);
                                          },
                                          child: Text(
                                            '5',
                                            style: khulaTextStyle.copyWith(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 32,
                                              color: blackColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: TextButton(
                                          onPressed: () {
                                            addDigit(6);
                                          },
                                          child: Text(
                                            '6',
                                            style: khulaTextStyle.copyWith(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 32,
                                              color: blackColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                      decoration: const BoxDecoration(),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: TextButton(
                                              onPressed: () {
                                                addDigit(7);
                                              },
                                              child: Text(
                                                '7',
                                                style: khulaTextStyle.copyWith(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 32,
                                                  color: blackColor,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: TextButton(
                                              onPressed: () {
                                                addDigit(8);
                                              },
                                              child: Text(
                                                '8',
                                                style: khulaTextStyle.copyWith(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 32,
                                                  color: blackColor,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: TextButton(
                                              onPressed: () {
                                                addDigit(9);
                                              },
                                              child: Text(
                                                '9',
                                                style: khulaTextStyle.copyWith(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 32,
                                                  color: blackColor,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: const BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: TextButton(
                                            onPressed: () {
                                              backspace();
                                            },
                                            child: Icon(
                                                Icons.backspace_outlined,
                                                color:
                                                    Colors.black.withBlue(40),
                                                size: 30),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: TextButton(
                                            onPressed: () {
                                              addDigit(0);
                                            },
                                            child: Text(
                                              '0',
                                              style: khulaTextStyle.copyWith(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 32,
                                                color: blackColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.pushNamed(context,
                                                  '/transaction-success');
                                            },
                                            child: Icon(Icons.check,
                                                color:
                                                    Colors.black.withBlue(40),
                                                size: 30),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DigitModel {
  int selectedIndex;
  int index;
  String code;
  double width;

  DigitModel({
    required this.selectedIndex,
    required this.index,
    required this.code,
    required this.width,
  });
}

class Digit extends StatelessWidget {
  final DigitModel data;
  const Digit(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 50,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: greyColor,
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(2, 5), // changes position of shadow
          ),
        ],
      ),
      child: data.code.length > data.index
          ? Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: Colors.black.withBlue(40),
                shape: BoxShape.circle,
              ),
            )
          : Container(),
    );
  }
}
