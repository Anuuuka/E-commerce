import 'package:flutter/material.dart';
class AddProduct extends StatefulWidget{
  static final String route = "Add-route";
  @override
  _AddProductState createState() => _AddProductState();
}
class _AddProductState extends State<AddProduct>{
  Color white = Colors.white;
  Color black = Colors.black;
  Color grey = Colors.grey;
  final _formKey = GlobalKey<FormState>();
  TextEditingController productNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: new IconButton(
          icon: Icon(
            Icons.close, color: black,
          ),
          onPressed: () {   Navigator.pop(context);
          },
        ),
        title: Text("Add product", style: TextStyle(color: black),),
      ),
      body: Form(
          key : _formKey,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 50, 15.0, 50),
                          child: OutlineButton(
                            borderSide: BorderSide(
                                color: grey.withOpacity(0.5), width: 2.5),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15.0, 50, 15.0, 50),
                              child: new Icon(Icons.add),
                            ),
                          )
                      )
                  ),
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 50, 15.0, 50),
                          child: OutlineButton(
                            borderSide: BorderSide(
                                color: grey.withOpacity(0.5), width: 2.5),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15.0, 50, 15.0, 50),
                              child: new Icon(Icons.add),
                            ),
                          )
                      )
                  ),
                ],
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter product name',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(     hintText: 'Enter color',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter size',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                    }
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          )
      ),
    );
  }
}

