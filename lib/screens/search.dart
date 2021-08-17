import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_chat_app/widgets/widgets.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  TextEditingController _searchName = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.transparent,
      body: Container(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [const Color(0xFF411d73),
                      const Color(0xFF012340),
                      const Color(0xFF0d0d0d)])),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    Expanded(child: TextField(
                      controller: _searchName,
                      style: inputTextStyle(),
                      decoration: InputDecoration(
                        hintText: "Search....",
                        hintStyle: TextStyle(
                          color: Colors.white38,
                        )
                      ),
                    )),
                    Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  const Color(0xffd64086),
                                  const Color(0xffa740d6),
                                ]
                            ),
                          borderRadius: BorderRadius.circular(15),
                        ),

                        child: Icon(FontAwesomeIcons.search, color: Colors.white70, size: 16,)),
                  ],
                ),
              )
            ],
          ),
          ),
        ),
      ),
      appBar: appBarRoom(context),
    );
  }
}
