import 'package:flutter/material.dart';
import 'package:lab_1/model/product.dart';
import 'package:lab_1/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> product = [
    Product(
      name: "Машка маица",
      price: "799 ден",
      description:
          "Класична машка маица со кратки ракави, идеална за секојдневно носење.",
      image:
          'https://static.sinsay.com/media/catalog/product/cache/1200/a4e40ebdc3e371adff845072e1c73f37/8/0/804CV-01X-001-1-881890.jpg',
    ),
    Product(
      name: "Машка зимска јакна",
      price: "4999 ден",
      description:
          "Стилска зимска јакна со модерен крој, совршена за ладни денови.",
      image:
          'https://static.zara.net/assets/public/2875/609a/7e374aeea6e8/a1d81fbdb054/08574700710-a1/08574700710-a1.jpg?ts=1726227434664&w=1500',
    ),
    Product(
      name: "Машки капут",
      price: "2499",
      description:
          "Елегантен машки капут, изработен од квалитетна вуна, совршен за зимски денови.",
      image:
          'https://static.zara.net/assets/public/2cef/689b/c59343e0bea6/14f8d4f355e9/06747862724-a5/06747862724-a5.jpg?ts=1728027706711&w=1500',
    ),
    Product(
      name: "Машки фармерки",
      price: "1299 ден",
      description:
          "Класични машки фармерки со тесен крој, удобни и стилски за секојдневно носење.",
      image:
          'https://static.zara.net/assets/public/f8c1/dd7d/017a472dace8/a0f05c9070a4/05575350710-a1/05575350710-a1.jpg?ts=1725872968875&w=1500',
    ),
    Product(
      name: "Машка спортска блуза",
      price: "1599 ден",
      description:
          "Спортска блуза за мажи, направена од удобен материјал, идеална за тренинг и активен живот.",
      image:
          'https://static.sinsay.com/media/catalog/product/2/8/287AW-74X-008-1-899278_1.jpg',
    ),
    Product(
      name: "Машки патиките",
      price: "2299 ден",
      description:
          "Комфорни и модерни машки патиките, погодни за тренинг или секојдневно носење.",
      image:
          'https://static.sinsay.com/media/catalog/product/5/2/5291J-MLC-001-1-847131_8.jpg',
    ),
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "203168",
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Color(0xffebebeb)),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xffff6700),
        ),
        body: Container(
          color: const Color(0xffff6700),
          child: ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: product.length,
            itemBuilder: (context, index) {
              return ProductCard(product: product[index]);
            },
          ),
        ));
  }
}
