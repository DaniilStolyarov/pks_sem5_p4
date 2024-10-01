import 'package:flutter/material.dart';
import 'package:shop_catalog/models/shop_item.dart';
import 'package:shop_catalog/pages/catalog.dart';

class CardPreview extends StatelessWidget {
  const CardPreview({super.key, required this.shopItems, required this.index});
  final List<ShopItem> shopItems;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: shopItems[index].isImageUrl
                      ? Image.network(shopItems[index].ImageHref,
                          width: double.infinity,
                          height: MediaQuery.of(context).size.width / 2,
                          fit: BoxFit.cover)
                      : Image.asset(shopItems[index].ImageHref,
                          width: double.infinity,
                          height: MediaQuery.of(context).size.width / 2,
                          fit: BoxFit.cover)),
              SizedBox(
                height: 20,
              ),
              Text(shopItems[index].Name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  )),
            ],
          ),
        ));
  }
}
