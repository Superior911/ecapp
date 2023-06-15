import 'package:easy_localization/easy_localization.dart';
import 'package:eduapp/components/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/news.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<INews> data = [];
  bool loading = false;
  @override
  void initState() {
      super.initState();
      _queryData();
  }

  void _queryData() async {
    setState(() {
      loading = true;
    });
    QuerySnapshot<Map<String, dynamic>> querySnapshot = await FirebaseFirestore.instance.collection('news').get();
    if (querySnapshot.docs.isNotEmpty) {
      List<INews> newData = [];
      for (QueryDocumentSnapshot<Map<String, dynamic>> documentSnapshot in querySnapshot.docs) {
          newData.add(INews(createdDate: documentSnapshot.get("date_added"), id: documentSnapshot.get("_id"), picture_url: documentSnapshot.get("picture_url")));
      }
      setState(() {
        data = newData;
        loading = false;
      });
    } else {
      print('No matching documents.');
      setState(() {
        data = [];
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    if(loading) {
      return Loading();
    }
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 100,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu, size: 30), // Hamburger menu icon
                onPressed: () {
                  Scaffold.of(context).openDrawer(); // Open the drawer
                },
              );
            },
          ),
          title: Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 250,
              margin: EdgeInsets.only(top: 10),
              child: Image.asset(
                'images/rmuttlogo.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              iconSize: 30,
              onPressed: () {},
            ),
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
              color: Color(0xFF790E9F),
            ),
          ),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFF790E9F),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome".tr(),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            ListTile(
              title: Text('${context.tr("help")}'),
              leading: const Icon(Icons.chat),
              onTap: () {
                Navigator.pushNamed(context, '/help'); // Handle drawer item tap
              },
            ),
            ListTile(
              title: Text(
                  '${context.tr("change language")}${context.locale.toString() == "th" ? "อังกฤษ" : " thai"}'),
              leading: const Icon(Icons.language),
              onTap: () async {
                await context.setLocale(context.locale.toString() == "th"
                    ? Locale("en")
                    : Locale("th"));
              },
            ),
            ListTile(
              title: Text('${context.tr("Additional information")}'),
              leading: const Icon(Icons.priority_high),
              onTap: () {
                // Handle drawer item tap
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.358,
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: (1 / .79),
                shrinkWrap: true,
                // physics:
                //     NeverScrollableScrollPhysics(), // Disable GridView's scrolling
                children: List.generate(4, (index) {
                  late Widget icon;

                  switch (index) {
                    case 0:
                      icon = const Icon(Icons.equalizer,
                          color: Colors.white, size: 50);
                      break;
                    case 1:
                      icon = const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 50,
                      );
                      break;
                    case 2:
                      icon = const Icon(
                        Icons.menu_book,
                        color: Colors.white,
                        size: 50,
                      );
                      break;
                    case 3:
                      icon = const Icon(
                        Icons.meeting_room,
                        color: Colors.white,
                        size: 50,
                      );
                      break;
                  }
                  return Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.topCenter,
                          children: <Widget>[
                            ClipOval(
                              child: SizedBox(
                                height: 100,
                                width: 100,
                                child: Material(
                                  color: Color(0xFFB155D1),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(50),
                                    splashColor: Colors.black,
                                    onTap: () {
                                      if (index == 0) {
                                        Navigator.pushNamed(
                                            context, '/information');
                                      } else if (index == 1) {
                                        Navigator.pushNamed(context, '/person');
                                      } else if (index == 2) {
                                        Navigator.pushNamed(
                                            context, '/subjectrmutt');
                                      } else if (index == 3) {
                                        Navigator.pushNamed(
                                            context, '/classroom');
                                      }
                                    },
                                    child: icon,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            index == 0
                                ? context.tr("branch")
                                : index == 1
                                    ? context.tr("person")
                                    : index == 2
                                        ? context.tr('subjectrmutt')
                                        : context.tr('classroom'),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.newspaper, size: 30),
                  const SizedBox(width: 10),
                  Text(
                    context.tr('news'),
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16.0),
                    height: 235,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: PageView.builder(
                      controller: PageController(viewportFraction: 0.8),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  '${data[index].picture_url}'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Row(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

