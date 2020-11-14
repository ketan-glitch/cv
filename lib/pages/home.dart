import 'package:cv/pages/resume.dart';
import 'package:cv/widgets/social.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Resume(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.bounceIn;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {

    Color pumpkin = Color(0xFFFF771F);
    Color grey = Color(0xFFf6f6fa);
    Color purple = Color(0xFF641652);
    Color btnColor= Color(0xFFff9e0f);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Positioned(
              right: 0,
              top: size.height*0.1,
              left: size.width*0.2,
              bottom: 0,
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.orangeAccent,
                      backgroundImage: AssetImage('assets/ktn.jpeg'),
                      radius: 50,
                    ),
                    SizedBox(height: 8,),
                    Text('Ketan Kadam',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.red,
                      ),
                    ),

                    Text('A Mobile App Developer',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.4,
                      ),
                    ),
                    SizedBox(height: 2,),
                    Text('B.E. Computer Engineer\n(MU)',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.4,
                      ),
                    ),
                    SizedBox(height: size.height*0.04,),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: btnColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            boxShadow: [BoxShadow(
                              color: btnColor.withOpacity(0.5),
                              offset: Offset(3.0,3.0),
                              blurRadius: 5,
                            )],
                          ),
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 45,
                          width: 250,
                          decoration: BoxDecoration(
                            color: btnColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            boxShadow: [BoxShadow(
                              color: btnColor.withOpacity(0.5),
                                offset: Offset(3.0,3.0),
                                blurRadius: 5,
                              )],
                          ),
                          child: Center(
                            child: Text('KETANK39@GMAIL.COM',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: size.height*0.04,),
                    Text('Based in Kalyan\nI am really curious about Computer technologies. I like Python, Dart, Java and also Designing Mobile Applications\n',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.2,
                      ),
                    ),
                    SizedBox(height: size.height*0.02,),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: btnColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [BoxShadow(
                          color: btnColor.withOpacity(0.5),
                          offset: Offset(3.0,3.0),
                          blurRadius: 5,
                        )],
                      ),
                      child:
                      Center(
                        child: FaIcon(
                          FontAwesomeIcons.github,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: size.height*0.05,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: btnColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      boxShadow: [BoxShadow(
                        color: btnColor.withOpacity(0.5),
                        offset: Offset(3.0,3.0),
                        blurRadius: 3,
                      )],
                    ),
                    child:
                    Center(
                      child: FaIcon(
                        FontAwesomeIcons.twitter,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: size.width*0.03,),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: btnColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      boxShadow: [BoxShadow(
                        color: btnColor.withOpacity(0.5),
                        offset: Offset(3.0,3.0),
                        blurRadius: 3,
                      )],
                    ),
                    child:
                    Center(
                      child: FaIcon(
                        FontAwesomeIcons.whatsapp,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: size.width*0.03,),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: btnColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      boxShadow: [BoxShadow(
                        color: btnColor.withOpacity(0.5),
                        offset: Offset(3.0,3.0),
                        blurRadius: 3,
                      )],
                    ),
                    child:
                    Center(
                      child: FaIcon(
                        FontAwesomeIcons.facebookF,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: size.width*0.03,),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: btnColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      boxShadow: [BoxShadow(
                        color: btnColor.withOpacity(0.5),
                        offset: Offset(3.0,3.0),
                        blurRadius: 3,
                      )],
                    ),
                    child:
                    Center(
                      child: FaIcon(
                        FontAwesomeIcons.instagram,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              child: Container(
                height: size.height,
                width: size.width*0.18,
                // color: Colors.white,
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: size.height/4,
                      width: size.width*0.18,
                      decoration: BoxDecoration(
                        color: pumpkin,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                          ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: purple,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.elliptical(50, 70),
                            bottomLeft: Radius.circular(20.0),
                          )
                        ),
                        child: Center(
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              'PERSONAL INFO',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height*0.007,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/resume');
                      },
                      child: Container(
                        height: size.height/4,
                        width: size.width*0.18,
                        color: Colors.white,
                        child: Container(
                          decoration: BoxDecoration(
                              color: grey,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                              )
                          ),
                          child: Center(
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                'RESUME',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height*0.007,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/projects');
                      },
                      child: Container(
                        height: size.height/4,
                        width: size.width*0.18,
                        color: Colors.white,
                        child: Container(
                          decoration: BoxDecoration(
                              color: grey,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                              )
                          ),
                          child: Center(
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                'PROJECTS',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height*0.007,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/hobbies');
                      },
                      child: Container(
                        height: size.height/4,
                        width: size.width*0.18,
                        color: Colors.white,
                        child: Container(
                          decoration: BoxDecoration(
                              color: grey,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                              )
                          ),
                          child: Center(
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                'HOBBIES',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Center(
            //   child: FlatButton(
            //     onPressed: (){
            //       Navigator.of(context).push(_createRoute());
            //     },
            //     color: Colors.blueGrey,
            //     child: Text('ktn'),
            //   ),
            // ),

          ],
        ),
      ),
    );
  }
}