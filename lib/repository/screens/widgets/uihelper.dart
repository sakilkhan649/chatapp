import 'package:chatapp/domain/constants/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiHelper {
  static CustomImage({required String imgUrl}) {
    return Image.asset("assets/images/$imgUrl");
  }

  static CustomText({
    required String text,
    required double fontSize,
    String? fontFamily,
    FontWeight? fontWeight,
    Color? color,
    required BuildContext context,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontFamily: fontFamily ?? "regula",
        color:
            color ??
            (Theme.of(context).brightness == Brightness.dark
                ? Appcolors.otptextdark
                : Appcolors.textlightmode),
      ),
    );
  }

  static CustomButton({
    required String buttonName,
    required VoidCallback callback,
    Color? buttonColor,
  }) {
    return SizedBox(
      height: 52,
      width: 327,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Appcolors.buttonlightmode,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          buttonName,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontFamily: "bold",
          ),
        ),
      ),
    );
  }

  static CustomTextField({
    required TextEditingController controller,
    required String text,
    required TextInputType textinputtype,
    required BuildContext context,
    required IconData icondata,
  }) {
    return Container(
      height: 45,
      width: 350,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? Appcolors.containerdarkmode
            : Appcolors.containerlightmode,
        borderRadius: BorderRadius.circular(7),
      ),
      child: TextField(
        controller: controller,
        keyboardType: textinputtype,
        decoration: InputDecoration(
          hintText: text,
          prefixIcon: Icon(icondata, color: Appcolors.iconlight),
          hintStyle: TextStyle(
            color: Theme.of(context).brightness == Brightness.dark
                ? Appcolors.hintdarkmode
                : Appcolors.hintlightmode,
            fontSize: 14,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
