import 'dart:io';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:pakektp/theme.dart';
import 'package:path_provider/path_provider.dart';

class KirimSaldoScanKtpPage extends StatefulWidget {
  const KirimSaldoScanKtpPage({Key? key}) : super(key: key);

  @override
  _KirimSaldoScanKtpPage createState() => _KirimSaldoScanKtpPage();
}

class _KirimSaldoScanKtpPage extends State<KirimSaldoScanKtpPage> {
  late CameraController controller;

  Future<void> initializeCamera() async {
    var cameras = await availableCameras();
    controller = CameraController(cameras[0], ResolutionPreset.medium);
    await controller.initialize();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future<File> takePicture() async {
    Directory root = await getTemporaryDirectory();
    String directoryPath = '${root.path}/camera';
    await Directory(directoryPath).create(recursive: true);
    String filePath = '$directoryPath/${DateTime.now()}.png';

    XFile picture = await controller.takePicture();
    picture.saveTo(filePath);

    return File(filePath);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: FutureBuilder(
        future: initializeCamera(),
        builder: (_, snapshot) => (snapshot.connectionState ==
                ConnectionState.done)
            ? Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.80,
                    decoration: const BoxDecoration(),
                    child: CameraPreview(controller),
                  ),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 260,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 40,
                        ),
                        decoration: BoxDecoration(
                          color: blackColor.withOpacity(0.6),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Image.asset(
                                    'assets/btn_back.png',
                                    width: 34,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    'assets/icon_flash_off.png',
                                    width: 34,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Scan KTP anda',
                              style: khulaTextStyle.copyWith(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                color: whiteColor,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Gambar kartu tidak akan disimpan\nPusatkan KTP kedalam bingkai',
                              style: khulaTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: whiteColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(),
                        child: Image.asset(
                          'assets/frame_scan_ktp.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
      floatingActionButton: InkWell(
        onTap: () async {
          // File result = await takePicture();
          // Navigator.pop(context, result);
          Navigator.pushNamed(context, '/kirim-saldo-penerima');
        },
        child: Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(bottom: 20),
          decoration: const BoxDecoration(),
          child: Image.asset(
            'assets/icon_camera_button.png',
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
