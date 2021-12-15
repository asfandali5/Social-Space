import 'package:flutter/material.dart';
import 'package:simple_chat_application/Global/Colors.dart' as MyColors;
import 'package:simple_chat_application/Widget/ChatListViewItem.dart';
import 'package:simple_chat_application/Widget/Loading.dart';
import 'package:simple_chat_application/Global/Settings.dart' as Settings;

class ChatListPageView extends StatefulWidget {
  @override
  _ChatListPageViewState createState() => _ChatListPageViewState();
}

class _ChatListPageViewState extends State<ChatListPageView> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading == true) {
      return Loading();
    } else {
      return Container(
        child: Scaffold(
          backgroundColor: Settings.isDarkMode
                    ? Colors.grey[900] : MyColors.blue,
          appBar: AppBar(
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            centerTitle: true,
            title: Text(
              'Chats',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            leading: IconButton(
              icon: Icon(Settings.isDarkMode
                  ? Icons.wb_sunny
                  : Icons.nightlight_round),
              onPressed: () {
                Settings.changeTheme();
              },
            ),
          ),
          body: Container(
            child: Container(
              decoration: BoxDecoration(
                color: Settings.isDarkMode
                    ? MyColors.darkBackGround
                    : MyColors.backGround,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
              ),
              child: ListView(
                children: <Widget>[
                  ChatListViewItem(
                    hasUnreadMessage: true,
                    image: AssetImage('assets/images/Narendra-Gupta.jpg'),
                    lastMessage:
                        "No evidence boss.",
                    name: "Doctor Salonkee",
                    newMesssageCount: 8,
                    time: "19:27 PM",
                  ),
                  ChatListViewItem(
                    hasUnreadMessage: true,
                    image: AssetImage('assets/images/GMD.jpeg'),
                    lastMessage:
                        "Another assignment is uploaded.",
                    name: "GMD",
                    newMesssageCount: 0,
                    time: "19:27 PM",
                  ),
                  ChatListViewItem(
                    hasUnreadMessage: false,
                    image: AssetImage('assets/images/Abdullah.jpeg'),
                    lastMessage:
                        "Hello",
                    name: "Abdullah Butt",
                    newMesssageCount: 0,
                    time: "19:27 PM",
                  ),
                  ChatListViewItem(
                    hasUnreadMessage: false,
                    image: AssetImage('assets/images/Faaiz.jpeg'),
                    lastMessage:
                        "Heil Fuhrer.",
                    name: "Faaiz",
                    newMesssageCount: 0,
                    time: "19:27 PM",
                  ),
                  ChatListViewItem(
                    hasUnreadMessage: false,
                    image: AssetImage('assets/images/Hammad.jpeg'),
                    lastMessage:
                        "Aja Valorant.",
                    name: "Hammad tufail",
                    newMesssageCount: 0,
                    time: "19:27 PM",
                  ),
                  ChatListViewItem(
                    hasUnreadMessage: false,
                    image: AssetImage('assets/images/Kumail.jpeg'),
                    lastMessage:
                        "Kya ho gya bhai.",
                    name: "Kumail",
                    newMesssageCount: 0,
                    time: "19:27 PM",
                  ),
                  ChatListViewItem(
                    hasUnreadMessage: false,
                    image: AssetImage('assets/images/Asfand.jpeg'),
                    lastMessage:
                        "Sir.",
                    name: "Asfand",
                    newMesssageCount: 0,
                    time: "19:27 PM",
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}
