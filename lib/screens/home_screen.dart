import 'package:flutter/material.dart';
import 'package:marcusng_flutter_chat_ui/models/message_model.dart';
import 'package:marcusng_flutter_chat_ui/widgets/category_selector.dart';
import 'package:marcusng_flutter_chat_ui/widgets/favorite_contacts.dart';
import 'package:marcusng_flutter_chat_ui/widgets/recent_chats.dart';

class HomeScreen extends StatefulWidget {
  static final String id = "home_screen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30,
          color: Colors.white,
          onPressed: () {},
        ),
        title: Text(
          "Chats",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  FavoriteContacts(),
                  RecentChats(),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
