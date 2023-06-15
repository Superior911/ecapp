import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_tawk/flutter_tawk.dart';

class ChatSupport extends StatelessWidget {
  const ChatSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF790E9F),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // Navigate back to the previous screen
            },
          ),
          title: Text('${context.tr("chatsupport")}'),
        ),
        body: Tawk(
          directChatLink: 'https://tawk.to/chat/64783ae7ad80445890f05b84/1h1qqc73k',
          visitor: TawkVisitor(
            name: 'name',
            email: 'easyeasy2545@gmail.com',
          ),
          onLoad: () {
            print('Hello Tawk!');
          },
          onLinkTap: (String url) {
            print(url);
          },
          placeholder: const Center(
            child: Text('Loading...'),
          ),
        ),
      ),
    );
  }
}
