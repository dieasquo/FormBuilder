import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_surat_ui/config/palette.dart';
import 'package:form_surat_ui/form/formijinkeramaian.dart';
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
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 10),
        child: FloatingActionButton(
          elevation: 5.0,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FormIjinKeramaian()));
          },
          child: Icon(Icons.add),
        ),
      ),
      backgroundColor: Pal.mediumGrey,
      appBar: AppBar(
        title: Text("Form"),
        backgroundColor: Colors.grey[100],
      ),
      body: Column(
        children: <Widget>[
          FormBuilder(
            key: _textField,
            child: Column(
              children: <Widget>[
                FormLayout(
                  title: "NIK",
                  attribute: "nik",
                  keyboardType: TextInputType.number,
                  maxlines: 1,
                ),
                SizedBox(height: 10),
                FormLayoutRadio(
                  title: "Radio",
                  attribute: "radio",
                ),
                FormLayout(
                  title: "Alamat Lengkap",
                  attribute: "alamat",
                  keyboardType: TextInputType.text,
                  maxlines: 3,
                ),
              ],
            ),
          ),
          RaisedButton(
            onPressed: () {
              onSave();
            },
            child: Text("Simpan"),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          )
        ],
      ),
    );
  }
}
