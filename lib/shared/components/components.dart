import 'package:flutter/material.dart';

import '../constant/constant.dart';

Widget defaultTextField({
  required TextEditingController controller,
  bool isPassword = false,
  required TextInputType type,
  Function? onSubmit,
  Function? onTap,
  String? text,
   IconData? prefix,
  IconData? suffix,
  Function? suffixFunction,
  Function? validate,

  String textForUnValid = 'this element is required',
  //required Function validate,
}) =>
    Container(
      child: TextFormField(
        autocorrect: true,
        controller: controller,
        onTap: () {
          onTap!();
        },
        validator: (value) {
          if (value!.isEmpty) {
            return textForUnValid;
          }
          return null;
        },
        onChanged: (value) {},
        onFieldSubmitted: (value) {
          onSubmit!(value);
        },
        obscureText: isPassword ? true : false,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          labelText: text,
          prefixIcon: Icon(prefix),
          suffixIcon: IconButton(
            onPressed: () {
              suffixFunction!();
            },
            icon: Icon(suffix),
          ),
          border:  const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(),
              gapPadding: 8,

          ),
        ),
      ),
    );

Widget defaultButton({
  required Function function,
  required String text,
}) =>
    Container(
     // width: width,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 0,
        ),
        child: MaterialButton(
          color: defaultColor,
          onPressed: () {
            function();
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))
          ),
          child: Text(
            text.toLowerCase(),
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
      ),

    );


Widget customButtonForSocialMedia({
  required String image,
  required String text,
  @required Function()? onTap,
}) =>
    InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 53,
        decoration: BoxDecoration(
          border: Border.all(
            width: .6,
            color: Colors.grey,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: 32,
              height: 32,
              image: AssetImage(
                image,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );