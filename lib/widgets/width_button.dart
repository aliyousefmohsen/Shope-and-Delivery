import 'package:flutter/material.dart';
import 'package:test2/core/utils/color_manager.dart';
import 'package:test2/core/utils/style_maneger.dart';

class WidthButton extends StatelessWidget {
  final String text;
  void Function()? onPressed;

  WidthButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.darkBlue,
        fixedSize: Size(MediaQuery.of(context).size.width, 56),
        // side: const BorderSide(color: ColorManager.darkBlue),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: onPressed ?? () {},
      child: Text(
        text,
        style:
            StylesManager.button1_14.copyWith(color: ColorManager.whiteColor),
      ),
    );
  }
}
