import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_surat_ui/config/palette.dart';

class FormLayout extends StatefulWidget {
  final String title, attribute;

  final maxlines;

  final TextInputType keyboardType;

  const FormLayout(
      {Key key,
      this.title,
      this.attribute,
      this.keyboardType,
      this.maxlines})
      : super(key: key);

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
          Container(
              height: 30,
              child: Text(
                widget.title,
              )),
          FormBuilderTextField(
            keyboardType: widget.keyboardType,
            attribute: widget.attribute,
            maxLines: widget.maxlines,
            decoration: InputDecoration(
              filled: true,
              focusColor: Colors.grey[100],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              fillColor: Pal.lightGrey,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 13, horizontal: 15),
            ),
          ),
          SizedBox(
            height: 10,
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
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class ContainerBackground extends StatefulWidget {
  final SingleChildScrollView singleChildScrollView;

  const ContainerBackground({Key key, this.singleChildScrollView})
      : super(key: key);

  _ContainerBackgroundState createState() => _ContainerBackgroundState();
}

class _ContainerBackgroundState extends State<ContainerBackground> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      padding: EdgeInsets.all(15),
      child: widget.singleChildScrollView,
    );
  }
}
