// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:test2/core/utils/color_manager.dart';
import 'package:test2/core/utils/style_maneger.dart';
import 'package:test2/core/utils/values_manager.dart';

// ignore: must_be_immutable
class CategoryButton extends StatefulWidget {
  String categoryName;
  Color bgColor = Colors.transparent;
  Color textColor = const Color(0xff616A7D);
  Color borderColor = const Color(0xffB2BBCE);
  CategoryButton({super.key, required this.categoryName});

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p12),
        decoration: BoxDecoration(
          color: widget.bgColor,
          border: Border.all(color: widget.borderColor),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            widget.categoryName,
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
