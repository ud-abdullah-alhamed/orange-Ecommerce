import 'package:flutter/material.dart';
import 'package:my_app/features/dashboard/data/model/offers_model.dart';
import 'package:my_app/features/dashboard/presention/widgets/main_widget/dashboard_content.dart';

Container offersContainer(OffersModel offersModel) {
  return Container(
    height: 150,
    width: 220,
    decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        image: DecorationImage(
            image: AssetImage(offersModel.imgUrl), fit: BoxFit.fill)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Dashboard.offercontainerTitle(offersModel.title),
          Dashboard.offercontainerSubText(offersModel.brandcount)
        ],
      ),
    ),
  );
}
