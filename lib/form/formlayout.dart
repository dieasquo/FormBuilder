import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormLayout extends StatefulWidget {
  final String title, attribute;

  final TextInputType keyboardType;

  const FormLayout({Key key, this.title, this.attribute, this.keyboardType}) : super(key: key);

  _FormLayoutState createState() => _FormLayoutState();
}

class _FormLayoutState extends State<FormLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(widget.title),
          FormBuilderTextField(
            keyboardType: widget.keyboardType,
            attribute: widget.attribute,
            autofocus: true,
            decoration: InputDecoration(
              filled: true,
              focusColor: Colors.grey[100],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              fillColor: Colors.grey[300],
              contentPadding:
                  EdgeInsets.symmetric(vertical: 13, horizontal: 15),
            ),
          ),
        ],
      ),
    );
  }
}

class FormLayoutRadio extends StatefulWidget {
  final String title, attribute;

  const FormLayoutRadio({Key key, this.title, this.attribute})
      : super(key: key);

  _FormLayoutRadioState createState() => _FormLayoutRadioState();
}

class _FormLayoutRadioState extends State<FormLayoutRadio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(widget.title),
          FormBuilderRadio(

            attribute: widget.attribute,
            leadingInput: true,
            validators: [FormBuilderValidators.required()],
            options: ["Laki - Laki", "Perempuan"]
                .map((lang) => FormBuilderFieldOption(value: lang))
                .toList(growable: false),
          ),
        ],
      ),
    );
  }
}

