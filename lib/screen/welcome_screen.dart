import 'package:flutter/material.dart';



class welcomescreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height /1.6,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                    Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height /1.6,
                  decoration: BoxDecoration(
                    color: Color(0xFF790E9F),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
                  ),
                  child: Center(
                    child: Image.asset(
                      "images/Industrial_Education.png",scale: 0.5,
                      ),
                  ),
                ),
              ],
              ),
              Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height : MediaQuery.of(context).size.height / 2.666,
              decoration: BoxDecoration(
                color: Color(0xFF790E9F),
              ),
            ),
            ),
            Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height : MediaQuery.of(context).size.height / 2.666,
              padding: EdgeInsets.only(top: 40, bottom: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(70),
                ),
              ),
              child: Column(
                children: [
                  Text('ครุศาสตร์อุตสาหกรรม',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    wordSpacing: 2,
                  ),
                  ),
                  SizedBox(height: 15),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 35),
                  child: Text(
                    "สาขาวิศวกรรมคอมพิวเตอร์",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize: 17, 
                    color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  ),
                  SizedBox(height: 60),
                  Material(color: Color(0xFF790E9F),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, '/home');
                      // Navigator.push(context, MaterialPageRoute(
                      //   builder: (context) => HomePage(),
                      // ));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15,
                      horizontal: 80),
                      child: Text('เริ่มต้น',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                      ),
                    ),
                  ),
                  ),
              ],),
            ),
            ),
          ],
          ),
      ),
    );
  }
}