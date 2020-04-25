import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:oyo_clone/Screens/home.dart';
import 'package:oyo_clone/delayed_animation.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

  
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  
  final _phoneController=TextEditingController();
  final _codeController=TextEditingController();
  
  Future<bool> loginuser(String phone,BuildContext context) async{
    FirebaseAuth _auth=FirebaseAuth.instance;

    _auth.verifyPhoneNumber(
      phoneNumber: phone, 
      timeout: Duration(seconds: 60), 
      verificationCompleted: (AuthCredential credential) async{
        Navigator.of(context).pop();
        AuthResult result=await _auth.signInWithCredential(credential);

        FirebaseUser user=result.user;

        if(user!=null){
          Navigator.push(context, MaterialPageRoute(
            builder: (context)=>HomeScreen(user: user,)));
        }
        else{
          print("Error");
        }
      }, 
      verificationFailed: (AuthException exception){
        print(exception);
      }, 
      codeSent: (String verificationId, [int forceResendingToken]){
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context){
            return AlertDialog(
              title: Text("Give the code"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextField(
                    controller: _codeController,
                  ),
                ]
              ),
              actions: <Widget>[
                FlatButton(
                  onPressed: () async{
                    final code=_codeController.text.trim();
                    AuthCredential credential=PhoneAuthProvider.getCredential(verificationId: verificationId, smsCode: code);
                    
                    AuthResult result= await _auth.signInWithCredential(credential);
                  
                    FirebaseUser user=result.user;

                    if(user!=null){
                       Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>HomeScreen(user: user,)));
                        }
                    else{
                      print("Error");
                    }
                  }, 
                  child: Text('Confirm'),
                  color: Colors.blue,
                  ),
              ],
            );
          });
      }, 
      codeAutoRetrievalTimeout: null);
  }
  
  
  
  final int delayedAmount = 500;
  double _scale;
  AnimationController _controller;

  @override

  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final color = Colors.white;
    _scale = 1 - _controller.value;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xFF8185E2),
          body: Center(
            child: Column(
              children: <Widget>[
                AvatarGlow(
                  endRadius: 90,
                  duration: Duration(seconds: 2),
                  glowColor: Colors.white24,
                  repeat: true,
                  repeatPauseDuration: Duration(seconds: 2),
                  startDelay: Duration(seconds: 1),
                  child: Material(
                      elevation: 8.0,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        child: FlutterLogo(
                          size: 50.0,
                        ),
                        radius: 50.0,
                      )),
                ),
                DelayedAnimation(
                  child: Text(
                    "OYO",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                        color: color),
                  ),
                  delay: delayedAmount + 1000,
                ),
                DelayedAnimation(
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                        color: color),
                  ),
                  delay: delayedAmount + 2000,
                ),
                SizedBox(
                  height: 30.0,
                ),
                DelayedAnimation(
                  child: Text(
                    "Slogan",
                    style: TextStyle(fontSize: 20.0, color: color),
                  ),
                  delay: delayedAmount + 3000,
                ),
                // DelayedAnimation(
                //   child: Text(
                //     "Journaling  companion",
                //     style: TextStyle(fontSize: 20.0, color: color),
                //   ),
                //   delay: delayedAmount + 3000,
                
                SizedBox(
                  height: 100.0,
                ),
                DelayedAnimation(
                child: GestureDetector(
                  onTapDown: _onTapDown,
                  onTapUp: _onTapUp,
                  child: Transform.scale(
                    scale: _scale,
                    child: _animatedButtonUI,
                  ),
                ),
                delay: delayedAmount + 4000,
              ),
              SizedBox(height: 50.0,),
                // DelayedAnimation(
                //   child: Text(
                //     "I Already have An Account".toUpperCase(),
                //     style: TextStyle(
                //         fontSize: 20.0,
                //         fontWeight: FontWeight.bold,
                //         color: color),
                //   ),
                //   delay: delayedAmount + 5000,
                // ),
              ],
            ),
          ),
          //  Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Text('Tap on the Below Button',style: TextStyle(color: Colors.grey[400],fontSize: 20.0),),
          //     SizedBox(
          //       height: 20.0,
          //     ),
          //      Center(

          //   ),
          //   ],

          // ),
          floatingActionButton: FloatingActionButton(
            child: Text('Verify'),
            onPressed: (){
              final phone=_phoneController.text.trim();
              loginuser(phone, context);
            },
          ),
          ),
    );
  }

  Widget get _animatedButtonUI => Column(

    children: <Widget>[

      Container(
        height: 60,
        width: 270,
        // color: Colors.white,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Phone no.',
          ),
          // onChanged: (String str){
          //   // phone=str;
          // },
          controller: _phoneController,
        ),
      ),

      SizedBox(height: 20,),

      Container(
        height: 60,
        width: 270,
        // color: Colors.white,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Email add.'
          ),
        ),
      ),
    ],
  );
  
      //   Container(
        
      //   height: 60.0,
      //   width: 270,
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(100.0),
      //     color: Colors.white,
      //   ),
      //   child: Center(
      //     child: Text(
      //       'Phone no.',
      //       style: TextStyle(
      //         fontSize: 20.0,
      //         fontWeight: FontWeight.bold,
      //         color: Color(0xFF8185E2),
      //       ),
      //     ),
      //   ),
      // );

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }
}
