import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:forms_ui/widgets/catalog_list.dart';
import 'package:google_fonts/google_fonts.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        title: Text(
          'Dress',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          //shrinkWrap: true,
          children: const [
            CatalogList(
              title: 'Full-Length Skirt',
              subtitle:
                  'This plaid cotton skirt will keep you warm in the winter',
              imagePath: 'images/full-length-skirt.jpg',
              newPrice: '\$187',
              oldPrice: '\$200',
            ),
            SizedBox(
              height: 15,
            ),
            CatalogList(
              title: 'Peasant Blouse',
              subtitle:
                  'Look your best this fall in this V-neck, pleated peasant',
              imagePath: 'images/peasant blouse.jpg',
              newPrice: '\$200',
              oldPrice: '\$285',
            ),
            SizedBox(
              height: 15,
            ),
            CatalogList(
              title: 'High-Waisted Skirt',
              subtitle:
                  'Available in khaki, taupe, and dove gray, this-waisted',
              imagePath: 'images/high waist skirt.jpg',
              newPrice: '\$187',
              oldPrice: '\$220',
            ),
            SizedBox(
              height: 15,
            ),
            CatalogList(
              title: 'Leather  Backpack',
              subtitle:
                  'The cute miniature pack has adjustable straps, allowing you comfortable',
              imagePath: 'images/leather backpack.jpg',
              newPrice: '\$200',
              oldPrice: '\$285',
            ),
            SizedBox(
              height: 15,
            ),
            CatalogList(
              title: 'Sweetheart Dress',
              subtitle:
                  'Be bold in red with this fashionable, yet comfortable for you',
              imagePath: 'images/sweet heart dress.jpg',
              newPrice: '\$187',
              oldPrice: '\$220',
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
