import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AdditionalInfo extends StatefulWidget {
  const AdditionalInfo({super.key});

  @override
  State<AdditionalInfo> createState() => _AdditionalInfoState();
}

bool light = true;

class _AdditionalInfoState extends State<AdditionalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Text(
          "Additional Information",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 32, 110, 173),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              print("Dukaan App");
            },
            leading: Icon(Icons.share),
            title: Text(
              "Share Dukaan App",
              style: TextStyle(fontSize: 17),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          ListTile(
            onTap: () {
              print("change language");
            },
            leading: Icon(Icons.chat_outlined),
            title: Text(
              "Change Language",
              style: TextStyle(fontSize: 17),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
              onTap: () {},
              leading: FaIcon(FontAwesomeIcons.whatsapp),
              title: Text("WhatsApp Chat Support"),
              trailing: Switch(
                  value: light,
                  onChanged: (bool value) {
                    setState(() {
                      light = value;
                    });
                  })),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.lock_outlined),
            title: Text("Privacy Policy"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.star_outline),
            title: Text("Rate Us"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.logout),
            title: Text("Sign Out"),
          ),
          SizedBox(
            height: 280,
          ),
          Text(
            "Version",
            style: TextStyle(color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          Text(
            "2.4.2",
            style: TextStyle(color: Colors.grey, wordSpacing: 2.0),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
