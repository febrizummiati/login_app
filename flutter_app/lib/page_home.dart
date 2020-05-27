import 'package:flutter/material.dart';
import 'package:flutterapp/main.dart';

class PageHome extends StatefulWidget {
  final String nama;
  final String pass;

  PageHome({Key key, this.nama, this.pass}) : super(key: key);
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Home'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 50,),
                SizedBox(height: 30,),
                Text('Ahlan Wa Sahlan',
                  style: TextStyle(fontSize: 28,),
                ),
                SizedBox(height: 30,),
                Text('${widget.nama}',
                  style: TextStyle(fontSize: 30,),
                ),
                SizedBox(height: 30,),
                Text('Your password : '+ widget.pass,
                  style: TextStyle(fontSize: 20,),
                ),
                SizedBox(height: 30,),
                MaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text('Sign Out', style: TextStyle(color: Colors.white, fontSize: 20),),
                  color: Colors.teal,
                ),
                SizedBox(height: 30,),
              ]
          ),
        ),
      ),
    );
  }
}
