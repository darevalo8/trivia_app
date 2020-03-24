import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  final String titulo;
  final String subTitle;
  final Function onChanged;
  FormWidget({this.titulo, this.subTitle, this.onChanged});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: new InputDecoration(
        prefixIcon: Icon(Icons.email, color: Colors.blueAccent),
        labelText: titulo,
        hintText: subTitle,
        fillColor: Colors.white,
        border: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(25.0),
          borderSide: new BorderSide(),
        ),
        //fillColor: Colors.green
      ),
      validator: (val) {
        if (val.length == 0) {
          return "Email cannot be empty";
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.emailAddress,
      style: new TextStyle(
        fontFamily: "Poppins",
      ),
      onChanged: onChanged,
    );
  }
}
