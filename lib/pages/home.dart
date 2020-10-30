import 'package:cv/widgets/social.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Future<void> _launched;
  String _phone = '8689814110';

  void launchUrl(url) async{

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }
  Widget _launchStatus(BuildContext context, AsyncSnapshot<void> snapshot) {
    if (snapshot.hasError) {
      return Text('Error: ${snapshot.error}');
    } else {
      return const Text('');
    }
  }

  @override
  Widget build(BuildContext context) {
    const String faceBookUrl = 'https://www.facebook.com/Keyy007';
    const String instaGramUrl = 'https://www.instagram.com/i_m_ktn';
    const String whatsAppUrl = 'https://wa.me/918689814110?text=Hello';
    const String twitterUrl = 'https://www.twitter.com/ketan0073';
    const String gitHubUrl = 'https://github.com/ketan-glitch';
    return Scaffold(
      backgroundColor: Colors.white,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 100,
                    // color: Colors.black,
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/ktn.jpeg'),
                          radius: 40.0,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
                            child: Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Ketan Kadam',
                                      style: TextStyle(
                                        color: Colors.pink,
                                        // letterSpacing: 1.0,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(height: 5.0,),
                                    Text(
                                      'Computer Engineer | Flutter, Python, \nAndroid Studio',
                                      style: TextStyle(
                                        color: Colors.blueGrey,
                                        letterSpacing: 1.0,
                                        fontSize: 12,
                                        // fontWeight: FontWeight,
                                      ),
                                    ),
                                    SizedBox(height: 5.0,),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_city_sharp,
                                          size: 15,
                                        ),
                                        Text(
                                          'Kalyan',
                                          style: TextStyle(
                                            color: Colors.blueGrey,
                                            letterSpacing: 1.0,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      _launched=_makePhoneCall('tel:$_phone');
                                    });
                                  },
                                  icon: Icon(
                                    Icons.phone,
                                    color: Colors.blueGrey[900],
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Social(),
                  FlatButton.icon(
                    onPressed: (){
                      Navigator.pushNamed(context, '/cv');
                    },
                    icon: Icon(
                      Icons.arrow_right_alt,
                      color: Colors.black,
                    ),
                    label: Text(
                      'Click to view Resume',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }


}
