import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class VerificationCodeInputWidget extends StatelessWidget {
  // VoidCallback onCompleteCallback;
  final void Function(bool) onEditingCallback;
  final void Function(String) onCompleteCallback;

  const VerificationCodeInputWidget(
      {Key key, this.onCompleteCallback, this.onEditingCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return VerificationCode(
        textStyle: TextStyle(fontSize: 20.0, color: Colors.red[900]),
        keyboardType: TextInputType.number,
        // in case underline color is null it will use primaryColor: Colors.red from Theme
        underlineColor: Colors.amber,
        length: 4,
        // clearAll is NOT required, you can delete it
        // takes any widget, so you can implement your design
        clearAll: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'clear all',
            style: TextStyle(
                fontSize: 14.0,
                decoration: TextDecoration.underline,
                color: Colors.blue[700]),
          ),
        ),
        onCompleted: this.onCompleteCallback,
        //  (String value) {
        // },
        onEditing: this.onEditingCallback
        //  (bool value) {
        // },
        );
  }
}
