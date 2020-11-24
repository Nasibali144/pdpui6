import 'package:flutter/material.dart';
import 'package:pdpui6/animations/fade_animation.dart';

class HomePage extends StatefulWidget {

  static final String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _isLogin = false;

  Widget _signInButton() {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 55,
      decoration: BoxDecoration(
        color: Colors.yellow[900],
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
          child: Text(
            'Start',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18
            ),
          )
      ),
    );
  }

  Widget _signUpButtons() {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 55,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
                child: Text(
                  'Google',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                  ),
                )
            ),
          ),
        ),
        SizedBox(width: 10,),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 55,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
                child: Text(
                  'FaceBook',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                  ),
                )
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/im_party.jpeg'),
            fit: BoxFit.cover,
          )
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.1),
              ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 100,),
              FadeAnimation(delay: 1,child: Text('Find the best parties near you.', style: TextStyle(color: Colors.yellow[400], fontSize: 40),)),
              SizedBox(height: 30,),
              FadeAnimation(delay: 1.2, child: Text('Let us find you a tutorial for your interest', style: TextStyle(color: Colors.greenAccent, fontSize: 25),)),
              Expanded(child: Align(
                alignment: Alignment.bottomCenter,
                child: FadeAnimation(
                  delay: 1.4,
                  child: _isLogin ? _signInButton() : _signUpButtons(),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
