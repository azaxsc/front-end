import 'package:flutter/material.dart';
import 'package:hello_word/pages/home/homepage.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff01897d),
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        child: ListView(
          children: [
            // Logo
            Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center, //alinhando container para o centro
                    children: <Widget>[
                      Image(
                        image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL3aGs03QCBnrqh62Mqptz-rx_hDGFWEsoVw&usqp=CAU'),
                        height: 72,
                      ),
                      Text(
                        'Tela de Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ])),
            SizedBox(
              height: 52,
            ),
            //Form
            Column(
              children: <Widget> [
            //Input Email
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                      child: Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    style: TextStyle(
                      color: Color(0xcc313131),
                      fontFamily: 'OpenSans',
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          style: BorderStyle.none,
                          width: 0
                        )
                      ),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xed313131),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ]
              ),
              SizedBox(
                height: 28,
              ),
              //Input Password
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget> [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                      child: Text(
                        'Password',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    obscureText: true,
                    style: TextStyle(
                      color: Color(0xcc313131),
                      fontFamily: 'OpenSans',
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          style: BorderStyle.none,
                          width: 0
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xed313131),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 42,
              ),
              Container(
                width: double.infinity,
                child: ButtonTheme(
                  child: ElevatedButton(
                    onPressed: () => { 
                      Navigator.of(context)
                 .push(
                   MaterialPageRoute(builder: (context)=> HomePage())
                 )
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal[700],
                      onPrimary: Colors.teal[800],
                      padding: EdgeInsetsGeometry.lerp(EdgeInsets.zero, EdgeInsets.only(top: 8.5, bottom: 8.5), 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.transparent)
                      ),
                    ),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
