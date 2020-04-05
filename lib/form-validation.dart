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

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Este valor no puede estar vacio';
              }
            },
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
              },
              child: Text('submmit'),
            ),
          )
        ],
      ),
    );
  }
}