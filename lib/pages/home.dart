import 'package:flutter/material.dart';
import 'package:cv/pages/cv.dart';
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
      backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text(
            'ID Card',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/ktn.jpeg'),
                  radius: 90.0,
                ),
              ),
              Divider(
                height: 90,
                color: Colors.grey[800],
              ),
              Text(
                'NAME',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )
              ),
              SizedBox(height: 10.0,),
              Text(
                'Ketan Kadam',
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                'Computer Engineer',
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 50.0,),
              Text(
                  'Contact',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  )
              ),
              SizedBox(height: 10.0,),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      FlatButton.icon(
                        onPressed: (){
                          setState(() {
                            _launched=_makePhoneCall('tel:$_phone');
                          });
                        },
                        icon: Icon(
                          Icons.phone,
                          color: Colors.grey[400],
                          size: 18,
                        ),
                        label: Text(
                          '8689814110',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 15,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      FlatButton.icon(
                        onPressed: (){

                        },
                        icon: Icon(
                          Icons.alternate_email,
                          color: Colors.grey[400],
                          size: 18,
                        ),
                        label: Text(
                          'ketank39@gmail.com',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 15,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.whatsapp,
                          color: Colors.green,
                        ),
                        onPressed: (){
                          setState(() {
                            _launched=_launchInBrowser(whatsAppUrl);
                          });
                        },
                      ),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.facebookF,
                          color: Colors.blue,
                        ),
                        onPressed: (){
                          setState(() {
                            _launched=_launchInBrowser(faceBookUrl);
                          });
                        },
                      ),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.instagram,
                          color: Colors.red,
                        ),
                        onPressed: (){
                          setState(() {
                            _launched=_launchInBrowser(instaGramUrl);
                          });
                        },
                      ),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.twitter,
                          color: Colors.blue,
                        ),
                        onPressed: (){
                          setState(() {
                            _launched=_launchInBrowser(twitterUrl);
                          });
                        },
                      ),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.github,
                          color: Colors.white,
                        ),
                        onPressed: (){
                          setState(() {
                            _launched=_launchInBrowser(gitHubUrl);
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),
              FlatButton.icon(
                onPressed: (){
                  Navigator.pushNamed(context, '/cv');
                },
                icon: Icon(
                  Icons.arrow_right_alt,
                  color: Colors.white,
                ),
                label: Text(
                  'Click to view Resume',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              FutureBuilder<void>(future: _launched, builder: _launchStatus),
            ],
          ),
        ),
    );
  }


}
