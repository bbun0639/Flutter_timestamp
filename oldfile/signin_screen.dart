// import 'package:flutter/material.dart';
// // import 'package:timestamp/screens/authenticate/authenticate.dart';
// // import 'package:timestamp/services/auth.dart';
// // import 'package:timestamp/shared/comstants.dart';
// // import 'package:timestamp/shared/loading.dart';

// import '../screens/signup_screen.dart';

// class TabSignIn extends StatefulWidget {
//   final Function toggleView;
//   TabSignIn({this.toggleView});

//   static const routeName = '/login';

//   @override
//   _TabSignIn createState() => _TabSignIn();
// }

// class _TabSignIn extends State<TabSignIn> {
//   @override
//   Widget build(BuildContext context) {
//     //return loading ? Loading() : Scaffold()
//     return MaterialApp(
//       home: DefaultTabController(
//         length: choices.length,
//         child: Scaffold(
//           resizeToAvoidBottomPadding: false,
//           appBar: AppBar(
//             flexibleSpace: Container(
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                     begin: Alignment.centerLeft,
//                     end: Alignment.centerRight,
//                     colors: <Color>[Colors.indigoAccent[400], Colors.blue]),
//               ),
//             ),
//             centerTitle: true,
//             title: Text('Login'),
//             actions: <Widget>[
//               FlatButton.icon(
//                   icon: Icon(
//                     Icons.cached,
//                     color: Colors.white,
//                   ),
//                   label: Text(
//                     'Sign Up',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   onPressed: () {
//                     //widget.toggleView();
//                     Navigator.of(context)
//                         .pushReplacementNamed(TabSignUp.routeName);
//                   })
//             ],
//             bottom: TabBar(
//               //isScrollable: true,
//               tabs: choices.map((Choice choice) {
//                 return Tab(
//                   text: choice.title,
//                   icon: Icon(choice.icon, size: 35),
//                 );
//               }).toList(),
//             ),
//           ),
//           body: TabBarView(
//             children: choices.map((Choice choice) {
//               return Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: ChoiceCard(choice: choice),
//               );
//             }).toList(),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Choice {
//   const Choice({this.title, this.icon});

//   final String title;
//   final IconData icon;
// }

// const List<Choice> choices = const <Choice>[
//   const Choice(title: 'User', icon: Icons.person),
//   const Choice(title: 'Admin', icon: Icons.person_pin),
// ];

// class ChoiceCard extends StatelessWidget {
//   const ChoiceCard({Key key, this.choice}) : super(key: key);

//   final Choice choice;

//   @override
//   Widget build(BuildContext context) {
//     //final TextStyle textStyle = Theme.of(context).textTheme.display1;
//     return Card(
//       color: Colors.white,
//       child: Center(
//         child: Column(
//           //mainAxisSize: MainAxisSize.min,
//           //crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             SignIn(),
//             //Icon(choice.icon, size: 128.0),
//             //Text(choice.title),
//           ],
//         ),
//       ),
//     );
//   }
// }

// //<------------------------------------------------------------------------------------>

// class SignIn extends StatefulWidget {
//   final Function toggleView;
//   SignIn({this.toggleView});
//   @override
//   _SignInState createState() => _SignInState();
// }

// class _SignInState extends State<SignIn> {
//   //final AuthService  _auth = AuthService();
//   final _formKey = GlobalKey<FormState>();
//   bool loading = false;
//   String email = '';
//   String password = '';
//   String error = '';

//   @override
//   Widget build(BuildContext context) {
//     //return loading ? Loading() : Scaffold(
//     return SingleChildScrollView(
//       child: Container(
//         padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
//         child: Form(
//             key: _formKey,
//             child: Column(
//               children: <Widget>[
//                 SizedBox(height: 20.0),
//                 Image.asset(
//                   'images/logo-bottom.png',
//                   width: 120,
//                   height: 120,
//                 ),
//                 SizedBox(height: 10.0),
//                 TextFormField(
//                     //decoration: textTnputDecoration.copyWith(hintText: 'Email'),
//                     decoration: new InputDecoration(
//                       hintText: 'Email',
//                       icon: new Icon(
//                         Icons.mail,
//                         color: Colors.grey,
//                       ),
//                     ),
//                     validator: (val) => val.isEmpty ? 'Enter an Email' : null,
//                     onChanged: (val) {
//                       setState(() => email = val);
//                     }),
//                 SizedBox(height: 20.0),
//                 TextFormField(
//                     //decoration: textTnputDecoration.copyWith(hintText: 'Password'),
//                     decoration: new InputDecoration(
//                       hintText: 'Password',
//                       icon: new Icon(
//                         Icons.lock,
//                         color: Colors.grey,
//                       ),
//                     ),
//                     validator: (val) =>
//                         val.length < 6 ? 'Enter a password 6+ chars long' : null,
//                     obscureText: true,
//                     onChanged: (val) {
//                       setState(() => password = val);
//                     }),
//                 SizedBox(height: 20.0),
//                 RaisedButton(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20.0),
//                   ),
//                   color: Colors.pink[400],
//                   child: Text(
//                     'Login',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   onPressed: () async {
//                     // if (_formKey.currentState.validate()) {
//                     //   setState(() => loading = true);
//                     //   dynamic result = await _auth.signInWithEmailAndPassword(email, password);
//                     //   print('valid');
//                     //   if (result == null) {
//                     //     setState(() {
//                     //       error = 'Could not sign in with those credentials';
//                     //       loading = false;
//                     //     });
//                     //   }
//                     // }
//                     print(email);
//                     print(password);
//                   },
//                 ),
//                 SizedBox(height: 12.0),
//                 Text(
//                   error,
//                   style: TextStyle(color: Colors.red, fontSize: 14.0),
//                 ),
//               ],
//             )),
//       ),
//     );
//   }
// }
