import 'package:flutter/material.dart';
import 'package:mobile_app/app/utils/contants.dart';
import 'package:mobile_app/app/widgets/text_field_container.dart';

// ignore: must_be_immutable
class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final Function onPressed;
  bool showPassword;

  RoundedPasswordField({
    Key key,
    this.onChanged,
    this.onPressed,
    this.showPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: !showPassword,
        onSaved: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Digite a senha",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
            onPressed: onPressed,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
