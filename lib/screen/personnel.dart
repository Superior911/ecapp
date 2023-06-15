import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../model/teacher.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:eduapp/components/loading.dart';

class Personnel extends StatefulWidget {
  const Personnel({Key? key}) : super(key: key);

  @override
  State<Personnel> createState() => _PersonnelState();
}

class _PersonnelState extends State<Personnel> {
  List<Iteachers> data = [];
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

    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await FirebaseFirestore.instance.collection('teacher').get();

    if (querySnapshot.docs.isNotEmpty) {
      List<Iteachers> newData = [];

      for (QueryDocumentSnapshot<Map<String, dynamic>> documentSnapshot
          in querySnapshot.docs) {
        newData.add(Iteachers(
          id: documentSnapshot.get("_id"),
          first_name: documentSnapshot.get("first_name"),
          last_name: documentSnapshot.get("last_name"),
          picture_url: documentSnapshot.get("picture_url"),
          rank: documentSnapshot.get("rank"),
        ));
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
    if (loading) {
      return Loading();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF790E9F),
        title: Text('${context.tr("person")}'),
      ),
      body: _buildListView(),
    );
  }

  ListView _buildListView() {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (_, index) {
        return Card(
          child: ListTile(
            title: Text(data[index].rank),
            subtitle: Text('${data[index].first_name} ${data[index].last_name}'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage('${data[index].picture_url}'),
              backgroundColor: Color(0xFFB155D1),
              radius: 25,
            ),
            trailing: Icon(Icons.arrow_forward),
          ),
        );
      },
    );
  }
}
