import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pakektp/theme.dart';

class MitraGerobakPage extends StatefulWidget {
  const MitraGerobakPage({Key? key}) : super(key: key);

  @override
  _MitraGerobakPage createState() => _MitraGerobakPage();
}

class _MitraGerobakPage extends State<MitraGerobakPage> {
  late BitmapDescriptor customIcon;
  Set<Marker> markers = {};

  @override
  void initState() {
    super.initState();
  }

  createMarker(context) {
    ImageConfiguration configuration = createLocalImageConfiguration(context);
    BitmapDescriptor.fromAssetImage(configuration, 'assets/pin_maps.png')
        .then((icon) {
      setState(() {
        customIcon = icon;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    createMarker(context);
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
            'Gerobak',
            style: khulaTextStyle.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: blackColor,
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: const CameraPosition(
          target: LatLng(-6.891515011969829, 107.61946551299091),
          zoom: 16.4746,
        ),
        onMapCreated: (GoogleMapController controller) {},
        markers: markers,
        onTap: (pos) {
          // ignore: avoid_print
          print(pos);
          Marker m = Marker(
              markerId: const MarkerId('1'), icon: customIcon, position: pos);

          setState(() {
            markers.add(m);
          });
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 32,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: rosyColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mitra Gerobak di\nSekitar Anda',
                              style: khulaTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: whiteColor,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, '/mitra-gerobak-add-location');
                              },
                              child: Image.asset(
                                'assets/icon_add_location.png',
                                width: 42,
                                height: 42,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 14,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/image_gerobak.png',
                                width: 90,
                                height: 90,
                              ),
                              const SizedBox(width: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 200,
                                    decoration: const BoxDecoration(),
                                    child: Text(
                                      'Gerobak Indomie Pak Yanto',
                                      style: khulaTextStyle.copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: blackColor,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 200,
                                    decoration: const BoxDecoration(),
                                    child: Text(
                                      'Jl. M.H. Thamrin No.Kav. 28-30, Gondangdia, Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10350',
                                      style: khulaTextStyle.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: blackColor,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 14,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/image_gerobak.png',
                                width: 90,
                                height: 90,
                              ),
                              const SizedBox(width: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 200,
                                    decoration: const BoxDecoration(),
                                    child: Text(
                                      'Gerobak Sosis Pak Robert',
                                      style: khulaTextStyle.copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: blackColor,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 200,
                                    decoration: const BoxDecoration(),
                                    child: Text(
                                      'Jl. M.H. Thamrin No.Kav. 28-30, Gondangdia, Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10350',
                                      style: khulaTextStyle.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: blackColor,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 100),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.90,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: whiteColor,
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
          child: TextField(
            autocorrect: true,
            decoration: InputDecoration(
              isDense: true,
              hintText: ' Cari Mitra Gerobak',
              suffixIcon: Padding(
                padding: const EdgeInsets.all(4),
                child: Image.asset(
                  'assets/icon_search.png',
                  width: 20,
                ),
              ),
              hintStyle: khulaTextStyle.copyWith(
                fontWeight: FontWeight.w700,
                color: greyColor,
              ),
              filled: true,
              fillColor: Colors.white70,
              enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: whiteColor, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: greyColor, width: 1),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
    );
  }
}
