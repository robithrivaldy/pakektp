import 'package:flutter/material.dart';
import 'package:pakektp/pages/personal/home_personal_page.dart';
import 'package:pakektp/providers/page_provider.dart';
import 'package:pakektp/theme.dart';
import 'package:provider/provider.dart';

class MainPersonalPage extends StatefulWidget {
  const MainPersonalPage({Key? key}) : super(key: key);
  @override
  _MainPersonalPage createState() => _MainPersonalPage();
}

class _MainPersonalPage extends State<MainPersonalPage> {
  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);

    Widget scanBarcodeButton() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: redColor,
        child: Image.asset(
          'assets/icon_menu_scan_barcode.png',
          width: 200,
        ),
      );
    }

    Widget bottomNav() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(0),
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 14,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: blackColor,
            currentIndex: pageProvider.currentIndex,
            onTap: (value) {
              // ignore: avoid_print
              print(value);
              pageProvider.currentIndex = value;
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/icon_menu_home.png',
                    width: 30,
                    color: pageProvider.currentIndex == 0
                        ? Colors.yellow
                        : Colors.white,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                    right: 50,
                  ),
                  child: Image.asset(
                    'assets/icon_menu_list.png',
                    width: 30,
                    color: pageProvider.currentIndex == 1
                        ? Colors.yellow
                        : Colors.white,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                    left: 50,
                  ),
                  child: Image.asset(
                    'assets/icon_menu_help.png',
                    width: 30,
                    color: pageProvider.currentIndex == 2
                        ? Colors.yellow
                        : Colors.white,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/icon_menu_profile.png',
                    width: 30,
                    color: pageProvider.currentIndex == 3
                        ? Colors.yellow
                        : Colors.white,
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (pageProvider.currentIndex) {
        case 0:
          return const HomePersonalPage();
          // ignore: dead_code
          break;
        case 1:
          return const HomePersonalPage();
          // ignore: dead_code
          break;

        case 2:
          return const HomePersonalPage();
          // ignore: dead_code
          break;

        case 3:
          return const HomePersonalPage();
          // ignore: dead_code
          break;

        default:
          return const HomePersonalPage();
          // ignore: dead_code
          break;
      }
    }

    return Scaffold(
      floatingActionButton: scanBarcodeButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomNav(),
      body: body(),
    );
  }
}
