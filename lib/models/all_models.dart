import 'package:citcom_ui/common/images.dart';
import 'package:citcom_ui/common/text.dart';

class TwoProducts {

  final String imagePath;
  final String imageName;
  final String brandName;
  final String priceLogo;
  final String price;
  final String offerPrice;

  TwoProducts({
    required this.imagePath,
    required this.imageName,
    required this.brandName,
    required this.price,
    required this.offerPrice,
    required this.priceLogo,
  });
}

List<TwoProducts> twoProducts = [
  TwoProducts(
    imagePath: NImages.imageA1,
    imageName: NText.textA1,
    brandName: NText.textA2,
    priceLogo: NText.textA3,
    price: NText.textA4,
    offerPrice: NImages.imageA3,
  ),
  TwoProducts(
    imagePath: NImages.imageA2,
    imageName: NText.textA5,
    brandName: NText.textA6,
    priceLogo: NText.textA7,
    price: NText.textA8,
    offerPrice: NImages.imageA4,
  ),
];
