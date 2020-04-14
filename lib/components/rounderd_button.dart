import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
 final Color colour;
  final String title;
 final Function onTap;

  RoundedButton({this.colour,this.title,@required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onTap,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

//  Colors.lightBlueAccent,
//  () {
//             //Go to login screen.
//             Navigator.pushNamed(context, LoginScreen.id);
//           },