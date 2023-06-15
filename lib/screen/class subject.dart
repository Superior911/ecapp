import 'package:flutter/material.dart';
import 'package:eduapp/screen/appbanner.dart';
import 'package:easy_localization/easy_localization.dart';

class Classroom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF790E9F),
        title: Text('${context.tr("classroom")}'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  context.tr("roomrmutt"),
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            height: 165,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: PageView.builder(
              controller: PageController(viewportFraction: 0.8),
              itemCount: classroombanner.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: NetworkImage('${classroombanner[index].thumbnailUrl}'),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          Text(
            context.tr("library"),
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w400,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            height: 165,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: PageView.builder(
              controller: PageController(viewportFraction: 0.8),
              itemCount: classroombanner1.length, // Make sure to define referenceBannerList1
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: NetworkImage('${classroombanner1[index].thumbnailUrl}'),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          Text(
            context.tr("laboratory"),
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w400,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            height: 165,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: PageView.builder(
              controller: PageController(viewportFraction: 0.8),
              itemCount: classroombanner2.length, // Make sure to define referenceBannerList2
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: NetworkImage('${classroombanner2[index].thumbnailUrl}'),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
