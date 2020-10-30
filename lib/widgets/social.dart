import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Social extends StatefulWidget {
  @override
  _SocialState createState() => _SocialState();
}

class _SocialState extends State<Social> {

  Future<void> _launched;

  void launchUrl(url) async{

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


  @override
  Widget build(BuildContext context) {
    const String faceBookUrl = 'https://www.facebook.com/Keyy007';
    const String instaGramUrl = 'https://www.instagram.com/i_m_ktn';
    const String whatsAppUrl = 'https://wa.me/918689814110?text=Hello';
    const String twitterUrl = 'https://www.twitter.com/ketan0073';
    const String gitHubUrl = 'https://github.com/ketan-glitch';
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: (){

            },
            icon: Icon(
            Icons.email_outlined,
            color: Colors.red,
            ),
          ),
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
              color: Colors.black,
            ),
            onPressed: (){
              setState(() {
                _launched=_launchInBrowser(gitHubUrl);
              });
            },
          ),
          ],
      ),
    );
  }


}
