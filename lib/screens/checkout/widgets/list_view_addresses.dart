import 'package:flutter/widgets.dart';

import '../../../core/const/const.dart';
import 'container_address.dart';

class ListViewAdresses extends StatelessWidget {
  const ListViewAdresses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: adressesList.length,
      itemBuilder: (context, index) {
        return ContainerAdress(
          place: adressesList[index].place,
          details: adressesList[index].detailsAdress,
        );
      },
    );
  }
}
