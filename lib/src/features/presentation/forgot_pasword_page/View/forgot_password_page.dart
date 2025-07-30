import 'package:delivery_app/src/features/presentation/commons_widgets/back_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/headers_text.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return backButton(context, Colors.black);
          }
        ),                
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              headerText('Forgot password', Theme.of(context).primaryColor, FontWeight.bold, 30.0),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Please enter your email address. You will receive a link to creaate a new password via email',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0
                  ),
                ),
              ),
              _emailInput(),
              _sendButton(context),
            ],
          ),
        ),
      ),
    );
  }
}


Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Your email',
        border: OutlineInputBorder(borderSide: BorderSide.none))
      ),
    );
}

Widget _sendButton(BuildContext context) {
  return Container(
    width: 350,
    height: 45.0,
    margin: EdgeInsets.only(top: 30.0),
    child: ElevatedButton(
      onPressed: () {
        _showAlert(context);
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
            'Send',
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

void _showAlert(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        content: SizedBox(
          height: 400,
          child: Column(
            children: [
              Image(
                image: AssetImage('assets/lock.png'),
                width: 130,
                height: 130,
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                child: headerText('Your password has been reset', Theme.of(context).primaryColor, FontWeight.bold, 20.0)                
              ) ,
              Container(
                margin: EdgeInsets.all(15.0),
                child: Text(
                  "You'll shortly recive an email with a code to setup a new password",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                  ),
                ),
              ),
              _doneButton(context),     
            ],
          ),
        ),
      );
    }
  );
}

Widget _doneButton(BuildContext context) {
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
            'Done',
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