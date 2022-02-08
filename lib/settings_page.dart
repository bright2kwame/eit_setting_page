import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  var whiteTextStyle = TextStyle(color: Colors.white, fontSize: 16);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text("Profile"),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipOval(
                child: Image.asset(
                  "images/profile.png",
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Jully Salomy",
                    style: whiteTextStyle,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    color: Colors.purple,
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        "PRO",
                        style: whiteTextStyle,
                      ),
                    ),
                  )
                ],
              ),
              Text(
                "kwame@gmail.com",
                style: whiteTextStyle,
              ),
              _settingsRowItem("iCloud", Colors.blue, Icons.cloud),
              _settingsRowItem(
                  "Apple Calender", Colors.amber, Icons.calendar_today),
              _settingsRowItem("General Settings", Colors.red, Icons.settings),
            ],
          ),
        ));
  }

  Widget _settingsRowItem(String title, Color iconBg, IconData iconData) {
    return Container(
      padding: EdgeInsets.only(top: 8),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            child: Container(
              color: iconBg,
              height: 44,
              width: 44,
              child: Icon(
                iconData,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(
                title,
                style: whiteTextStyle,
              ),
            ),
          ),
          Text(
            "Disabled",
            style: whiteTextStyle,
          ),
        ],
      ),
    );
  }
}
