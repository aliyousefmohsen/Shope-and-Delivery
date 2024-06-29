import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test2/core/utils/assets_manager.dart';
import 'package:test2/core/utils/color_manager.dart';
import 'package:test2/core/utils/style_maneger.dart';
import 'package:test2/core/utils/values_manager.dart';

class ContainerAdress extends StatefulWidget {
  final String place;

  final String details;

  const ContainerAdress(
      {super.key, required this.place, required this.details});

  @override
  State<ContainerAdress> createState() => _ContainerAdressState();
}

class _ContainerAdressState extends State<ContainerAdress> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        check = !check;
        setState(() {});
      },
      child: Container(
        margin: const EdgeInsets.only(
            left: AppPadding.p24, right: AppMargin.m24, top: AppMargin.m24),
        padding: const EdgeInsets.all(AppPadding.p20),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
              color: check
                  ? ColorManager.orangeYellow
                  : Colors.black12.withOpacity(0.04)),
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  widget.place,
                  style: StylesManager.body2Regular16,
                ),
                const Spacer(),
                check == true
                    ? SizedBox(
                        height: 30,
                        child: CircleAvatar(
                          backgroundColor: ColorManager.orangeYellow,
                          radius: AppSize.s15,
                          child: SvgPicture.asset(AssetsManager.check),
                        ),
                      )
                    : const SizedBox(
                        height: 30,
                      )
              ],
            ),
            const SizedBox(
              height: AppSize.s14,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    widget.details,
                    style: StylesManager.h4Regular18
                        .copyWith(color: ColorManager.black100),
                  ),
                ),
                const Spacer(),
                Text(
                  'Edit',
                  style: StylesManager.body02Regular14
                      .copyWith(color: ColorManager.darkBlue),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}






// TextField(
//       decoration: InputDecoration(
//         label: Text("data"),
//         hintText: 'esee',
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(color: ColorManager.orangeYellow),
//         ),
//       ),
//     )