import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test2/core/utils/string_manager.dart';

import '../../../core/utils/style_maneger.dart';

class DateTextFeild extends StatefulWidget {
  const DateTextFeild({super.key});

  @override
  State<DateTextFeild> createState() => _DateTextFeildState();
}

class _DateTextFeildState extends State<DateTextFeild> {
  UnderlineInputBorder underLineStyle() {
    return const UnderlineInputBorder(
      borderSide: BorderSide(
        width: 1, // عرض الخط الأسفل الحقل النصي
        color: Color(0xffE9EAF4),
      ),
    );
  }

  final TextEditingController _controller = TextEditingController();
  final DateFormat _dateFormat = DateFormat('yyyy-MM-dd');
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringManager.expDate,
          style: StylesManager.body02Regular14.copyWith(
            color: const Color(0xff8891A5),
          ),
        ),
        TextField(
          controller: _controller,
          // scrollPadding: EdgeInsets.zero,
          decoration: InputDecoration(
            enabledBorder: underLineStyle(),
            focusedBorder: underLineStyle(),
          ),
          readOnly: true,
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
            );

            if (pickedDate != null) {
              setState(() {
                _controller.text = _dateFormat.format(pickedDate);
              });
            }
          },
        ),
      ],
    );
  }
}
