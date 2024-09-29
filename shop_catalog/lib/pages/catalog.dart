import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_catalog/components/card_preview.dart';
import 'package:shop_catalog/models/shop_item.dart';
import 'package:shop_catalog/pages/add_item.dart';
import 'package:shop_catalog/pages/item_view.dart';


class Catalog extends StatefulWidget {
  const Catalog({super.key});
  @override
  createState() => CatalogState();
}

class CatalogState extends State<Catalog>
{
  List<ShopItem> shopItems = [];
  @override void initState() {
    super.initState();
    loadShopItems();
  }

  void addItem(ShopItem item) {
    setState(() {
      shopItems.add(item);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 0),
          itemCount: shopItems.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: CardPreview(shopItems: shopItems, index: index),
              onTap: () {
                debugPrint('tapped ${shopItems[index].Name}');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ItemView(shopItem: shopItems[index]))
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Add Note',
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddItem(catalogState: this,)));
        },
      ),
    );
  }
  Future<void> loadShopItems() async {
    String jsonString = await rootBundle.loadString('static/Services.json');
    List<dynamic> jsonList = jsonDecode(jsonString);
    setState(() {
      shopItems = jsonList.map((json) => ShopItem.fromJson(json)).toList();
    });
    
  }
}
