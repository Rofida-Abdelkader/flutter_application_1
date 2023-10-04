import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  required Function() function,
  required String text,
  double radius = 10.0,
}) =>
    Container(
      width: width,
      height: 40.0,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
    );

Widget defaultFormFeild({
  required TextEditingController controller,
  required TextInputType type,
  Function()? onSubmit,
  Function()? onChange,
  //required Function(String) validate,
  required String lable,
  IconData? suffix,
  Function()? suffixPressed,
  required IconData? prefix,
  bool isPassword = false,
  required String? Function(String?)? validate,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      validator: validate,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: lable,
        suffixIcon: prefix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffix,
                ),
              )
            : null,
        prefixIcon: Icon(prefix),
        border: OutlineInputBorder(),
      ),
    );
