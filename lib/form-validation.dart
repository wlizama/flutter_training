import 'package:flutter/material.dart';

// class FirstFormValidation extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final appTitle = 'First Form validation';
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(appTitle),
//         ),
//         body: FirstFormValidationInput(),
//       );
//   }
// }

class FirstFormValidation extends StatefulWidget {
  @override
  _FirstFormValidationInputState createState() => _FirstFormValidationInputState();
}

class _FirstFormValidationInputState extends State<FirstFormValidation> {
  final _formkey = GlobalKey<FormState>();
  final myControler = TextEditingController();
  FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();
    // crea el focus node
    myFocusNode = FocusNode();
    myControler.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // limpia focus node cuando se cierre el formulario
    myFocusNode.dispose();
    myControler.dispose();
    super.dispose();
  }

  _printLatestValue() {
    print('Field value listened: ${myControler.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Form validation'),
      ), 
      body: Builder(
        builder: (BuildContext context) {
          return Form(
            key: _formkey,
            child:  Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    autofocus: true,
                    focusNode: myFocusNode,
                    decoration: InputDecoration(
                      hintText: 'Ejm: Wily Colon',
                      labelText: 'Nombre'
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Este valor no puede estar vacio';
                      }
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: '00',
                      labelText: 'Edad'
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (text) {
                      print('edad cambio $text');
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Ejm: wily.colon@gmail.com',
                      labelText: 'e-mail'
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Este valor no puede estar vacio';
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    controller: myControler,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: RaisedButton(
                      onPressed: () {
                        if (_formkey.currentState.validate()) {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Procesando'),
                            )
                          );
                        }
                        else {
                          FocusScope.of(context).requestFocus(myFocusNode);
                        }
                      },
                      child: Text('submit'),
                    ),
                  )
                ],
              ),
            ) 
            
          );
        }
      )
    );
  }
}