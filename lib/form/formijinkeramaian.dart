import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_surat_ui/form/formlayout.dart';

class FormIjinKeramaian extends StatefulWidget {
  FormIjinKeramaian({Key key}) : super(key: key);

  _FormIjinKeramaianState createState() => _FormIjinKeramaianState();
}

class _FormIjinKeramaianState extends State<FormIjinKeramaian> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormBuilderState> _formIjinKeramaian =
        GlobalKey<FormBuilderState>();

    void onSave() {
      _formIjinKeramaian.currentState.save();
      print(_formIjinKeramaian.currentState.value);
    }

    return Scaffold(
      body: Container(
        child: FormBuilder(
          key: _formIjinKeramaian,
          child: Column(
            children: <Widget>[
              FormLayout(
                attribute: "Oke",
                title: "data1",
                keyboardType: TextInputType.number,
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
      ),
    );
  }
}
