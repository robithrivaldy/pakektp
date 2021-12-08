import 'dart:io';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:path_provider/path_provider.dart';

class CameraKtpPersonPage extends StatefulWidget {
  const CameraKtpPersonPage({Key? key}) : super(key: key);

  @override
  _CameraKtpPersonPage createState() => _CameraKtpPersonPage();
}

class _CameraKtpPersonPage extends State<CameraKtpPersonPage> {
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
        builder: (_, snapshot) =>
            (snapshot.connectionState == ConnectionState.done)
                ? Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.80,
                        decoration: const BoxDecoration(),
                        child: CameraPreview(controller),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(
                          left: 50,
                          right: 50,
                          top: 400,
                        ),
                        decoration: const BoxDecoration(),
                        child: Image.asset(
                          'assets/frame_camera_ktp_person.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  ),
      ),
      floatingActionButton: InkWell(
        onTap: () async {
          File result = await takePicture();

          Navigator.pop(context, result);
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
