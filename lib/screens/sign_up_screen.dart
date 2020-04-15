import 'package:flutter/material.dart';

import '../screens/sign_in_screen.dart';

import '../screens/rooms_view_screen.dart';

class SignUpState extends StatefulWidget {
  final Function toggleView;
  SignUpState({this.toggleView});

  @override
  _SignUpState createState() => _SignUpState();

  static const routeName = '/sign-up';
}

class _SignUpState extends State<SignUpState>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollViewController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: NestedScrollView(
        controller: _scrollViewController,
        headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              leading: IconButton(
                icon: Icon(Icons.line_style),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(RoomsViewScreen.routeName);
                },
              ),
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[Colors.indigoAccent[400], Colors.blue]),
                ),
              ),
              centerTitle: true,
              title: Text('Sign Up'),
              pinned: true,
              floating: true,
              forceElevated: boxIsScrolled,
              actions: <Widget>[
                FlatButton.icon(
                    icon: Icon(
                      Icons.cached,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      //widget.toggleView();
                      Navigator.of(context)
                          .pushReplacementNamed(SignInState.routeName);
                    })
              ],
              // bottom: TabBar(
              //   tabs: <Widget>[
              //     Tab(
              //       text: "User",
              //       icon: Icon(Icons.person, size: 30),
              //     ),
              //     Tab(
              //       text: "Admin",
              //       icon: Icon(Icons.person_pin, size: 30),
              //     )
              //   ],
              //   controller: _tabController,
              // ),
            )
          ];
        },
        // body: TabBarView(
        //   children: <Widget>[
        //     UserSignUp(),
        //     AdminSignUp(),
        //   ],
        //   controller: _tabController,
        // ),
        body: AdminSignUp(),
      ),
    );
  }
}

//<---------------------------------------------------->

class UserSignUp extends StatefulWidget {
  final Function toggleView;
  UserSignUp({this.toggleView});

  @override
  _UserSignUp createState() => _UserSignUp();
}

class _UserSignUp extends State<UserSignUp> {
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  String userEmail = '';
  String userPassword = '';
  String error = '';
  String userFullname = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Column(
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0),
                  Image.asset(
                    'images/logo-bottom.png',
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    //decoration: textTnputDecoration.copyWith(hintText: 'Email'),
                    decoration: new InputDecoration(
                      hintText: 'Full name',
                      icon: new Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                    ),
                    validator: (val) =>
                        val.isEmpty ? 'Please Enter your full name' : null,
                    onChanged: (val) {
                      setState(() => userFullname = val);
                    },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                      //decoration: textTnputDecoration.copyWith(hintText: 'Email'),
                      decoration: new InputDecoration(
                        hintText: 'Email',
                        icon: new Icon(
                          Icons.mail,
                          color: Colors.grey,
                        ),
                      ),
                      validator: (val) =>
                          val.isEmpty ? 'Please Enter an email' : null,
                      onChanged: (val) {
                        setState(() => userEmail = val);
                      }),
                  SizedBox(height: 20.0),
                  TextFormField(
                      //decoration: textTnputDecoration.copyWith(hintText: 'Password'),
                      decoration: new InputDecoration(
                        hintText: 'Password',
                        icon: new Icon(
                          Icons.lock,
                          color: Colors.grey,
                        ),
                      ),
                      validator: (val) => val.length < 6
                          ? 'Enter a password 6+ chars long'
                          : null,
                      obscureText: true,
                      onChanged: (val) {
                        setState(() => userPassword = val);
                      }),
                  SizedBox(height: 20.0),
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.pink[400],
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          setState(() => loading = true);
                          // dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                          // if (result == null) {
                          //   setState(() {
                          //     error = 'please supply a valid email';
                          //     loading = false;
                          //   });
                          // }
                        }
                      }),
                  SizedBox(height: 12.0),
                  Text(
                    error,
                    style: TextStyle(color: Colors.red, fontSize: 14.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//<---------------------------------------------------->

class AdminSignUp extends StatefulWidget {
  final Function toggleView;
  AdminSignUp({this.toggleView});

  @override
  _AdminSignUp createState() => _AdminSignUp();
}

class _AdminSignUp extends State<AdminSignUp> {
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  String adminEmail = '';
  String adminPassword = '';
  String error = '';
  String adminFullname = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Column(
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0),
                  Image.asset(
                    'images/logo-bottom.png',
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    //decoration: textTnputDecoration.copyWith(hintText: 'Email'),
                    decoration: new InputDecoration(
                      hintText: 'Full name',
                      icon: new Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                    ),
                    validator: (val) =>
                        val.isEmpty ? 'Please Enter your full name' : null,
                    onChanged: (val) {
                      setState(() => adminFullname = val);
                    },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                      //decoration: textTnputDecoration.copyWith(hintText: 'Email'),
                      decoration: new InputDecoration(
                        hintText: 'Email',
                        icon: new Icon(
                          Icons.mail,
                          color: Colors.grey,
                        ),
                      ),
                      validator: (val) =>
                          val.isEmpty ? 'Please Enter an email' : null,
                      onChanged: (val) {
                        setState(() => adminEmail = val);
                      }),
                  SizedBox(height: 20.0),
                  TextFormField(
                      //decoration: textTnputDecoration.copyWith(hintText: 'Password'),
                      decoration: new InputDecoration(
                        hintText: 'Password',
                        icon: new Icon(
                          Icons.lock,
                          color: Colors.grey,
                        ),
                      ),
                      validator: (val) => val.length < 6
                          ? 'Enter a password 6+ chars long'
                          : null,
                      obscureText: true,
                      onChanged: (val) {
                        setState(() => adminPassword = val);
                      }),
                  SizedBox(height: 20.0),
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.pink[400],
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          setState(() => loading = true);
                          // dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                          // if (result == null) {
                          //   setState(() {
                          //     error = 'please supply a valid email';
                          //     loading = false;
                          //   });
                          // }
                        }
                      }),
                  SizedBox(height: 12.0),
                  Text(
                    error,
                    style: TextStyle(color: Colors.red, fontSize: 14.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
