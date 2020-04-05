// import 'package:flutter/material.dart';
// import 'package:flutter_appgit/screens/signin_screen.dart';
// // import 'package:timestamp/services/auth.dart';
// // import 'package:timestamp/shared/comstants.dart';
// // import 'package:timestamp/shared/loading.dart';

// class TabSignUp extends StatefulWidget {
//   final Function toggleView;
//   TabSignUp({this.toggleView});

//   static const routeName = '/tab-signup';

//   @override
//   _TabSignUp createState() => _TabSignUp();
// }

// class _TabSignUp extends State<TabSignUp> {
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
//             title: Text('Sign Up'),
//             actions: <Widget>[
//               FlatButton.icon(
//                   icon: Icon(
//                     Icons.cached,
//                     color: Colors.white,
//                   ),
//                   label: Text(
//                     'Login',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   onPressed: () {
//                     // widget.toggleView();
//                     Navigator.of(context)
//                         .pushReplacementNamed(TabSignIn.routeName);
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
//             SignUp(),
//             //Icon(choice.icon, size: 128.0),
//             //Text(choice.title),
//           ],
//         ),
//       ),
//     );
//   }
// }

// //<------------------------------------------------------------------------------------>

// class SignUp extends StatefulWidget {
//   final Function toggleView;
//   SignUp({this.toggleView});

//   @override
//   _SignUpState createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   final _formKey = GlobalKey<FormState>();
//   bool loading = false;

//   String email = '';
//   String password = '';
//   String error = '';
//   String fullname = '';

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
//       child: Form(
//         key: _formKey,
//         child: Column(
//           children: <Widget>[
//             SizedBox(height: 20.0),
//             TextFormField(
//               //decoration: textTnputDecoration.copyWith(hintText: 'Email'),
//               decoration: new InputDecoration(
//                 hintText: 'Full name',
//                 icon: new Icon(
//                   Icons.person,
//                   color: Colors.grey,
//                 ),
//               ),
//               validator: (val) =>
//                   val.isEmpty ? 'Please Enter your full name' : null,
//               onChanged: (val) {
//                 setState(() => fullname = val);
//               },
//             ),
//             SizedBox(height: 20.0),
//             TextFormField(
//                 //decoration: textTnputDecoration.copyWith(hintText: 'Email'),
//                 decoration: new InputDecoration(
//                   hintText: 'Email',
//                   icon: new Icon(
//                     Icons.mail,
//                     color: Colors.grey,
//                   ),
//                 ),
//                 validator: (val) =>
//                     val.isEmpty ? 'Please Enter an email' : null,
//                 onChanged: (val) {
//                   setState(() => email = val);
//                 }),
//             SizedBox(height: 20.0),
//             TextFormField(
//                 //decoration: textTnputDecoration.copyWith(hintText: 'Password'),
//                 decoration: new InputDecoration(
//                   hintText: 'Password',
//                   icon: new Icon(
//                     Icons.lock,
//                     color: Colors.grey,
//                   ),
//                 ),
//                 validator: (val) =>
//                     val.length < 6 ? 'Enter a password 6+ chars long' : null,
//                 obscureText: true,
//                 onChanged: (val) {
//                   setState(() => password = val);
//                 }),
//             SizedBox(height: 20.0),
//             RaisedButton(
//                 color: Colors.pink[400],
//                 child: Text(
//                   'Sign Up',
//                   style: TextStyle(color: Colors.white, fontSize: 16),
//                 ),
//                 onPressed: () async {
//                   if (_formKey.currentState.validate()) {
//                     setState(() => loading = true);
//                     // dynamic result = await _auth.registerWithEmailAndPassword(email, password);
//                     // if (result == null) {
//                     //   setState(() {
//                     //     error = 'please supply a valid email';
//                     //     loading = false;
//                     //   });
//                     // }
//                   }
//                 }),
//             SizedBox(height: 12.0),
//             Text(
//               error,
//               style: TextStyle(color: Colors.red, fontSize: 14.0),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
