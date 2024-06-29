// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:test2/core/utils/color_manager.dart';
import 'package:test2/core/utils/style_maneger.dart';
import 'package:test2/core/utils/values_manager.dart';

class CustomButton extends StatefulWidget {
  String title;
  Color bgColor = Colors.transparent;
  Color textColor = const Color(0xff616A7D);
  Color borderColor = const Color(0xffB2BBCE);
  CustomButton({super.key, required this.title});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        //padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
        width: AppSize.s173,
        height: AppSize.s44,
        decoration: BoxDecoration(
          color: widget.bgColor,
          border: Border.all(color: widget.borderColor),
          borderRadius: BorderRadius.circular(AppSize.s30),
        ),
        child: Center(
          child: Text(
            widget.title,
            style: StylesManager.body02SemiBold14
                .copyWith(color: widget.textColor),
          ),
        ),
      ),
      onTap: () {
        setState(() {
          widget.bgColor = ColorManager.orangeYellow;
          widget.textColor = Colors.white;
          widget.borderColor = ColorManager.orangeYellow;
        });
      },
    );
  }
}
