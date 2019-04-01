import 'package:flutter/material.dart';




class LoginForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginFormState();
  }

}


class LoginFormState extends State<LoginForm>{

  final _formKey = GlobalKey<FormState>();

  Widget renderCard(){
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
                children: cardContents()
            ),
          )
        ),
      ),
    );
  }



  List<Widget> cardContents() => <Widget>[
    Container(
      margin: EdgeInsets.only(bottom: 8),
      child: TextFormField(
        validator: (value){
          if(value.isEmpty) return "*must not be empty!";
        },
      ),
    ),
    Container(
      margin: EdgeInsets.only(bottom: 24),
      child: TextFormField(
        validator: (value){
          if(value.isEmpty) return "*must not be empty!";
        },
      ),
    ),
    Container(
      child: RaisedButton(
        color: Colors.blue[400] ,
        textColor: Colors.white ,
        onPressed: () {
          // Validate will return true if the form is valid, or false if
          // the form is invalid.
          if (_formKey.currentState.validate()) {
            // If the form is valid, we want to show a Snackbar
            Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text('Processing Data')));
          }
        },
        child: Text('Login'),
      ),
    ),


  ];


  @override
  Widget build(BuildContext context) {
    return renderCard();
  }

}



