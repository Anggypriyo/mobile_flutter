
import 'package:flutter/material.dart';
import 'register.dart';
class firstPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/cgv.png',
              height: 250,
            ),
            Container(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                'Selamat Datang',
                style: new TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Nonton Yuk !',
                style: new TextStyle(
                  fontSize: 20,
                  color: Colors.grey
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 75),
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),

                ),
                onPressed: () {
                  Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (BuildContext context){
                          return SignupPage();
                        }
                      )
                  );
                },
                child : Container(
                  padding: EdgeInsets.all(10),
                  child: Text('Get Started',
                    style: new TextStyle(
                      fontSize: 20,
                    ),textAlign: TextAlign.center,
                  ),
                )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Text("Already have an account ? "),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/loginpage');
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Text('Sign in',
                      style: TextStyle(
                          color: Colors.purple
                      ),

                    ),

                  ),

                ),

              ],
            )
          ],
        ),
      ),
      ),
    );
  }
}