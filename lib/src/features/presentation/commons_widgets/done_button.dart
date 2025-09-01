import 'package:flutter/material.dart';

Widget doneButton(BuildContext context, String labelButton) {
  return Container(
    width: 350,
    height: 45.0,
    margin: EdgeInsets.only(top: 30.0),
    child: ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, 'login');
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(255, 140, 0, 1.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            labelButton,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17.0
            ),
          )
        ],
      ),
    ),
  );
}