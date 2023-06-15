import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:easy_localization/easy_localization.dart';

class Information extends StatefulWidget {
  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  bool showMore = false;
  List<String> allLines = [
    'คณะครุศาสตร์อุตสาหกรรม',
    'มหาวิทยาลัยเทคโนโลยีราชมงคลธัญบุรี',
    'ชือหลักสูตร : ครุศาสตร์อุตสาหกรรมบัณฑิต',
    'สาขา : วิศวกรรมคอมพิวเตอร์',
    'หลักสูตร 4 ปี',
    'หลักสูตรฉบับนี้ได้กําหนดให้มีการเรียนรู้ในกลุ่มวิชาฝึกประสบการณ์ในวิชาชีพครูจํานวน 2 ภาคการศึกษาและการฝึกงานในสถานประกอบการีการจัดการเรียนการสอนทั้งแบบหลักสูตรสี่ปี ซึ่งในปีการศึกษา 2563 ได้ดําเนินการปรับปรุงหลักสูตรเพื่อให้เป็นไปตามข้อบังคับ     คุรุสภาว่าด้วยมาตรฐานวิชาชีพ พ.ศ. 2556 กรอบมาตรฐานคุณวุฒิระดับอุดมศึกษาแห่งชาติ พ.ศ. 2552 แผนอุดมศึกษาระยะยาว 15 ปีฉบับที่ 2 (พ.ศ. 2551-2565) และแผนพัฒนาเศรษฐกิจ สังคมแห่งชาติฉบับที่ 12 (พ.ศ. 2559-2564) รวมทั้งสนองต่อความต้องการของหน่วยงานทั้งภาครัฐบาลและเอกชนตามเทคโนโลยีที่เปลี่ยนไปอย่างรวดเร็วมีวัตถุประสงค์เพื่อผลิตบัณฑิตที่มีความรู้ความชํานาญ สามารถปฏิบัติงานในหน้าที่ครูผู้สอนและฝึกอบรมสาขาวิชาวิศวกรรมคอมพิวเตอร์พร้อมทั้งมีคุณธรรม จริยธรรม ปฏิบัติตามจรรยาบรรณวิชาชีพ สอดคล้องกับการพัฒนาเศรษฐกิจและสังคมของประเทศ',
  
  ];

  @override
  Widget build(BuildContext context) {
    List<String> displayedLines = showMore ? allLines : allLines.sublist(0, 5);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF790E9F),
        title: Text('${context.tr("branch")}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'http://www.teched.rmutt.ac.th/wp-content/uploads/2022/02/Front-Teched.jpg',
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: displayedLines.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: ReadMoreText(
                    displayedLines[index],
                    trimLines: 20,
                    colorClickableText: Colors.red,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Showmore".tr(),
                    trimExpandedText: "Showlass".tr(),
                    delimiter: ' ',
                    callback: (status) {
                      setState(() {
                        showMore = status;
                      });
                    },
                  ),
                );
              },
            ),
            if (!showMore)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  child: Text(
                    "Showmore".tr(),
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color(0xFFB155D1),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      showMore = true;
                    });
                  },
                ),
              ),
            if (showMore)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  child: Text(
                    "Showlass".tr(),
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color(0xFFB155D1),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      showMore = false;
                    });
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
