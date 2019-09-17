import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_surat_ui/form/formlayout.dart';

class FormScreen extends StatefulWidget {
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormBuilderState> _textField =
        GlobalKey<FormBuilderState>();

    void onSave() {
      _textField.currentState.save();
      print(_textField.currentState.value);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
        backgroundColor: Colors.grey[100],
      ),
      body: Container(
        margin: EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            FormBuilder(
              key: _textField,
              child: Column(
                children: <Widget>[
                  FormLayout(
                    title: "NIK",
                    attribute: "nik",
                    keyboardType: TextInputType.numberWithOptions(),
                    
                  ),
                  SizedBox(height: 10),
                  FormLayoutRadio(
                    title: "Radio",
                    attribute: "radio",
                  ),
                ],
              ),
            ),
            RaisedButton(
              onPressed: () {
                onSave();
              },
              child: Text("Simpan"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            )
          ],
        ),
      ),
    );
  }
}
