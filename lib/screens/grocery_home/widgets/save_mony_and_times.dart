import 'package:flutter/material.dart';
import '../../../core/utils/string_manager.dart';
import '../../../core/utils/style_maneger.dart';
import '../../../core/utils/values_manager.dart';

class SavedMonyAndTime extends StatelessWidget {
  const SavedMonyAndTime({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.16,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xffFFC83A),
                    borderRadius: BorderRadius.all(
                      Radius.circular(AppSize.s16),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: StringManager.totalSavings,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: AppSize.s26,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              TextSpan(
                                text: StringManager.usd,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: AppSize.s26,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(StringManager.yourTotalSaving,
                            style: StylesManager.body02Medium14)
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: AppSize.s20),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(AppSize.s16),
                    ),
                    color: Color(0xffE4DDCB),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: StringManager.timeSaved,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: AppSize.s26,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            TextSpan(
                              text: StringManager.hrs,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: AppSize.s26,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(StringManager.yourTimeSaved,
                          style: StylesManager.body02Medium14)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
