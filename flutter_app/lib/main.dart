import 'package:flutter/material.dart';
import 'page_home.dart';

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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  String username, password;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Halaman Login'),
        backgroundColor: Colors.teal,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/logo.png',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover),
              SizedBox(height: 30,),
              TextFormField(
                validator: (value){
                  if (value.isEmpty){
                    return 'Please input Username';
                  } return null;
                },
                controller: usernameController,
                decoration: InputDecoration(
                  hintText: 'Username',
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
                ),
              ),
              SizedBox(height: 30,),
              TextFormField(
                validator: (value){
                  if (value.isEmpty){
                    return 'Please input Password';
                  } return null;
                }, maxLength: 12,
                maxLengthEnforced: true,
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Password',
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
                ),
              ),
              SizedBox(height: 30,),
              MaterialButton(
                onPressed: () {
                  username = usernameController.text;
                  password = passwordController.text;
                  if(_formKey.currentState.validate()){
                    if(username != 'admin'){
                      return 'Username Salah!';
                    }else if(password != 'admin'){
                      return 'Password Salah!';
                    }else{
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PageHome(nama: username, pass: password,)));
                    }
                  }
                },
                child: Text('Sign In', style: TextStyle(color: Colors.white, fontSize: 20),),
                color: Colors.teal,
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
