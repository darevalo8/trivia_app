import 'package:flutter/material.dart';
import 'package:triva_app/src/widgets/form_widget.dart';

class RegisterPage extends StatefulWidget {
  static final routeName = 'register';
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String email = "",
      name = "",
      document = "",
      telefono = "",
      direccion = "",
      password = "",
      project,
      documentType;
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Registro Clientes',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16.0,
                color: Colors.black54,
                fontFamily: "Gotik"),
          ),
          iconTheme: IconThemeData(
            color: Color(0xFF6991C7),
          ),
          actions: <Widget>[
            FlatButton(
              child: Icon(Icons.settings),
              onPressed: () {
                Navigator.pushNamed(context, 'config');
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(children: <Widget>[
              Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0)),
              _nameText(),
              Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
            
              _emailText(),
              Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
              _passwordText(),
              Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
              RaisedButton(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
                  child: Text('Registrar'),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                elevation: 0.0,
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {
                  print("Soy un $email");
                },
              )
            ]),
          ),
        ));
  }

  Widget _emailText() {
    return FormWidget(
      titulo: "Correo Electrónico",
      subTitle: "preaba@example",
      onChanged: (val) => email = val,
    );
  }

  Widget _nameText() {
    return FormWidget(
      titulo: "Nombre",
      subTitle: "",
      onChanged: (val) => name = val,
    );
  }




  Widget _passwordText() {
    return FormWidget(
      titulo: "Contraseña",
      subTitle: "",
      onChanged: (val) => password = val,
    );
  }

}
