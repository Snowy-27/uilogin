import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Icon(Icons.arrow_back),
        ),
        backgroundColor: Color.fromRGBO(25, 23, 32, 1),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 45, right: 45),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          'Se connecter',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 29,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Bienvenue.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 29,
                          ),
                        ),
                        Text(
                          'Veuillez vous connectez.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 27,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      enableSuggestions: false,
                      decoration: InputDecoration(
                        filled: true,
                        border: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(15.0),
                          ),
                        ),
                        fillColor: Color.fromRGBO(30, 28, 36, 1),
                        hintText: 'Phone, email or username',
                        hintStyle: new TextStyle(
                            color: Color.fromRGBO(100, 101, 111, 1)),
                        contentPadding: EdgeInsets.all(25.0),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: true,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      enableSuggestions: false,
                      decoration: InputDecoration(
                          filled: true,
                          border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.white),
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(15.0),
                            ),
                          ),
                          fillColor: Color.fromRGBO(30, 28, 36, 1),
                          hintText: 'Password',
                          hintStyle: new TextStyle(
                              color: Color.fromRGBO(100, 101, 111, 1)),
                          contentPadding: EdgeInsets.all(25.0),
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Colors.blue,
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'pas de compte en, ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'creer',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                RaisedButton(
                  child: Text('Creer un compte'),
                  onPressed: () {
                    print('clicked');
                  },
                  color: Color.fromRGBO(30, 28, 36, 1),
                  textColor: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: 4,
            )
          ],
        ));
  }
}
