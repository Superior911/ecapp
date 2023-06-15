import 'package:flutter/material.dart';
import 'appbanner.dart';
import 'package:easy_localization/easy_localization.dart';

class SubjectRmutt extends StatefulWidget {
  @override
  _SubjectRmuttState createState() => _SubjectRmuttState();
}

class _SubjectRmuttState extends State<SubjectRmutt> {
  double _zoomLevel = 1.0;
  int currentImageIndex = 0;

  List<String> keypadTexts = [
    "freshman".tr(), // Replace with your keypad texts
    "sophomore".tr(), 
    "junior".tr(),
    "senior".tr(),
  ];

  void changeImage(int index) {
    setState(() {
      currentImageIndex = index;
    });
  }

  void _handleZoom(double zoomFactor) {
    setState(() {
      _zoomLevel *= zoomFactor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF790E9F),
        title: Text('${context.tr("subjectrmutt")}'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onScaleUpdate: (ScaleUpdateDetails details) {
              _handleZoom(details.scale);
            },
            child: Transform.scale(
              scale: _zoomLevel,
              child: Image.network(imagePaths[currentImageIndex]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  if (currentImageIndex > 0) {
                    changeImage(currentImageIndex - 1);
                  }
                },
                icon: Icon(Icons.arrow_back),
              ),
              Text(keypadTexts[currentImageIndex], style: TextStyle(fontSize: 20)),
              IconButton(
                onPressed: () {
                  if (currentImageIndex < imagePaths.length - 1) {
                    changeImage(currentImageIndex + 1);
                  }
                },
                icon: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
