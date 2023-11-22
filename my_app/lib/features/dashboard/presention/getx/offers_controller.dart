import 'package:get/get.dart';
import 'package:my_app/features/dashboard/data/model/offers_model.dart';

class OffersController extends GetxController {
  static OffersController get instance => Get.find();

  List<OffersModel> offers = const [
    OffersModel(
        imgUrl: 'assets/Image Banner 2.png',
        title: 'SmartPhone',
        brandcount: '18 Brand'),
    OffersModel(
        imgUrl: 'assets/Image Banner 3.png',
        title: 'Fashion',
        brandcount: '24 Brand')
  ];
}
