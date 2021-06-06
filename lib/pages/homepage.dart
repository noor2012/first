import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isSignedIn = false;

  Widget buildHomeScreen(){
    return Text('already signedin');
  }

  Scaffold buildSignInScreen(){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Theme.of(context).accentColor,Theme.of(context).primaryColor]
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:35.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: RaisedButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width:60,
                        child: Image.asset('assets/images/google-logo-9822.png'),
                      ),
                      Text('Sign In With Google')
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if(isSignedIn){
      return buildHomeScreen();
    }else{
      return buildSignInScreen();
    }
  }
}
