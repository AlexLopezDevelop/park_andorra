import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:park_andorra/src/pages/discover.dart';
import 'package:park_andorra/src/pages/info.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _Home createState() => new _Home();
}

class _Home extends State<Home> {
  int currentPage = 0;
  List<Widget> tabs = <Widget>[
    Discover(),
    Info(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentPage],
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          backgroundColor: Color(0xffffb81c),
          onTap: (int index) {
            setState(() {
              this.currentPage = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: "Discover",
              icon: Container(
                width: 30,
                height: 30,
                child: SvgPicture.asset(
                  currentPage == 0
                      ? "assets/icons/ic_qr_code.svg"
                      : "assets/icons/ic_qr_code.svg",
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Information",
              icon: Container(
                width: 30,
                height: 30,
                child: SvgPicture.asset(
                  currentPage == 1
                      ? "assets/icons/ic_info.svg"
                      : "assets/icons/ic_info.svg",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
