import 'package:flutter/material.dart';
import 'package:mobile_app/app/utils/contants.dart';
import 'package:mobile_app/app/widgets/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool showPassword = true;

    return TextFieldContainer(
      child: TextField(
        obscureText: showPassword,
        onChanged: onChanged,
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
            onPressed: () => showPassword = !showPassword,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
