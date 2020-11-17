import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class Discover extends StatefulWidget {
  Discover({Key key}) : super(key: key);

  _Discover createState() => new _Discover();
}

class _Discover extends State<Discover> {
  String qrValue = "QR Code";

  void scanQR() async {
    String cameraScanResult = await scanner.scan();
    setState(() {
      qrValue = cameraScanResult;
    });
  }

  @override
  void initState() {
    super.initState();

    scanQR();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/icons/ic_qr_code_black.svg",
                      width: 120,
                      fit: BoxFit.fitWidth,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 120,
                      child: Text("Focus to any QR code to launch its content.",
                          textAlign: TextAlign.center),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SvgPicture.asset(
                "assets/backgrounds/bg_bended.svg",
                fit: BoxFit.fitWidth,
              ),
            ]),
      ],
    );
  }
}
