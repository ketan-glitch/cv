import 'package:flutter/material.dart';
import 'package:cv/pages/cv.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
                          print('phone');
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
                          print('email_id');
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
                          print('WhatsApp');
                        },
                      ),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.facebookF,
                          color: Colors.blue,
                        ),
                        onPressed: (){
                          print('Facebook');
                        },
                      ),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.instagram,
                          color: Colors.red,
                        ),
                        onPressed: (){
                          print('Instagram');
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
            ],
          ),
        ),
    );
  }
}