import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:test2/core/utils/style_maneger.dart';
import 'package:test2/core/utils/values_manager.dart';
import 'package:test2/models/address_model.dart';
import '../../../core/const/const.dart';
import 'add_new_address.dart';

class AddAddressWithAwesumDialog extends StatelessWidget {
  const AddAddressWithAwesumDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        String place = '';
        String detailsAdress = '';

        AwesomeDialog(
          // dialogBackgroundColor: Colors.black,
          //  barrierColor: Colors.transparent, // لجعل الخلفية شفافة
          context: context,
          dialogType: DialogType.success,
          headerAnimationLoop: true,
          animType: AnimType.scale,
          buttonsTextStyle: const TextStyle(color: Colors.black),
          showCloseIcon: true,
          body: Padding(
            padding: const EdgeInsets.all(AppPadding.p15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 3, bottom: 8),
                  child: Text(
                    'Enter your place',
                    style: StylesManager.h4Regular18,
                  ),
                ),
                TextField(
                  onChanged: (value) {
                    place = value;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Place',
                    border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(AppSize.s12))),
                  ),
                ),
                const SizedBox(height: AppSize.s10),
                Padding(
                  padding: const EdgeInsets.only(left: 3, bottom: 8),
                  child: Text(
                    'Enter your details adress',
                    style: StylesManager.h4Regular18,
                  ),
                ),
                TextField(
                  onChanged: (value) {
                    detailsAdress = value;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Details',
                    border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(AppSize.s12))),
                  ),
                ),
              ],
            ),
          ),
          btnCancelOnPress: () {},
          btnOkOnPress: () {
            if (place.isNotEmpty && detailsAdress.isNotEmpty) {
              adressesList.add(
                AddressModel(place: place, detailsAdress: detailsAdress),
              );
            }
          },
        ).show();
      },
      child: const AddNewAddress(),
    );
  }
}
