import 'package:flutter/material.dart';

import '../screens/sign_up_screen.dart';

import '../screens/rooms_view_screen.dart';

class SignInState extends StatefulWidget {
  final Function toggleView;
  SignInState({this.toggleView});

  @override
  _SignInState createState() => _SignInState();

  static const routeName = '/log-in';
}

class _SignInState extends State<SignInState>
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
              title: Text('Login'),
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
                      'Sign Up',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      //widget.toggleView();
                      Navigator.of(context)
                          .pushReplacementNamed(SignUpState.routeName);
                    })
              ],
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    text: "User",
                    icon: Icon(Icons.person, size: 30),
                  ),
                  Tab(
                    text: "Admin",
                    icon: Icon(Icons.person_pin, size: 30),
                  )
                ],
                controller: _tabController,
              ),
            ),
          ];
        },
        body: TabBarView(
          children: <Widget>[
            UserLogIn(),
            AdminLogIn(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}

//<---------------------------------------------------->

class UserLogIn extends StatefulWidget {
  final Function toggleView;
  UserLogIn({this.toggleView});

  @override
  _UserLogIn createState() => _UserLogIn();
}

class _UserLogIn extends State<UserLogIn> {
  //final AuthService  _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  String userEmail = '';
  String userPassword = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
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
                      hintText: 'User Email',
                      icon: new Icon(
                        Icons.mail,
                        color: Colors.grey,
                      ),
                    ),
                    validator: (val) => val.isEmpty ? 'Enter an Email' : null,
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
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    // if (_formKey.currentState.validate()) {
                    //   setState(() => loading = true);
                    //   dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                    //   print('valid');
                    //   if (result == null) {
                    //     setState(() {
                    //       error = 'Could not sign in with those credentials';
                    //       loading = false;
                    //     });
                    //   }
                    // }
                    print(userEmail);
                    print(userPassword);

                    Navigator.of(context)
                        .pushReplacementNamed(RoomsViewScreen.routeName);
                  },
                ),
                SizedBox(height: 12.0),
                Text(
                  error,
                  style: TextStyle(color: Colors.red, fontSize: 14.0),
                ),
              ],
            )),
      ),
    );
  }
}

//<---------------------------------------------------->

class AdminLogIn extends StatefulWidget {
  final Function toggleView;
  AdminLogIn({this.toggleView});

  @override
  _AdminLogIn createState() => _AdminLogIn();
}

class _AdminLogIn extends State<AdminLogIn> {
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  String adminEmail = '';
  String adminPassword = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
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
                    hintText: 'Admin Email',
                    icon: new Icon(
                      Icons.mail,
                      color: Colors.grey,
                    ),
                  ),
                  validator: (val) => val.isEmpty ? 'Enter an Email' : null,
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
                  validator: (val) =>
                      val.length < 6 ? 'Enter a password 6+ chars long' : null,
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
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  // if (_formKey.currentState.validate()) {
                  //   setState(() => loading = true);
                  //   dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                  //   print('valid');
                  //   if (result == null) {
                  //     setState(() {
                  //       error = 'Could not sign in with those credentials';
                  //       loading = false;
                  //     });
                  //   }
                  // }
                  print(adminEmail);
                  print(adminPassword);

                  Navigator.of(context)
                      .pushReplacementNamed(RoomsViewScreen.routeName);
                },
              ),
              SizedBox(height: 12.0),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
