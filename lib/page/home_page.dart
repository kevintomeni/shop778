import 'package:flutter/material.dart';
import 'package:shop778/widgets/slection_mode.dart';

import '../widgets/category.dart';
import '../widgets/offrelimite.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 30.0,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 350,
                      child: TextField(
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.search),
                              color: Colors.black,
                            ),
                            hintText: 'je cherche...',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50))),
                      ),
                    ),
                    Badge(
                      child: Icon(
                        Icons.notifications_outlined,
                        size: 30,
                      ),
                      label: Text("19"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Category(
                          name: 'accessoire',
                          icon: Icons.dangerous,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Category(
                          name: 'Sacs',
                          icon: Icons.shopping_bag,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Category(
                          name: 'vetement',
                          icon: Icons.abc,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Category(
                          name: 'chaussure',
                          icon: Icons.shower,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Category(
                          name: 'montre',
                          icon: Icons.watch,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Category(
                          name: 'electronique',
                          icon: Icons.headphones,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Category(
                          name: 'coiffure',
                          icon: Icons.woman,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Offre a durée limitée',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'voir plus',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    OffreLimite(
                      image: 'assets/images/montre.jpg',
                      newprice: '7.018',
                      oldprice: 'XAF8...',
                      vendu: ' +1000 vendus',
                      reduction: '-20%',
                      note: '4.6',
                    ),
                    OffreLimite(
                      image: 'assets/images/pull.jpg',
                      newprice: '1.108',
                      oldprice: 'XAF2...',
                      vendu: ' +5000 vendus',
                      reduction: '-53%',
                      note: '4.5',
                    ),
                    OffreLimite(
                      image: 'assets/images/robe.jpg',
                      newprice: '8.373',
                      oldprice: 'XAF1...',
                      vendu: ' 315 vendus',
                      reduction: '-53%',
                      note: '4.7',
                    ),
                    OffreLimite(
                      image: 'assets/images/collier.jpg',
                      newprice: '733',
                      oldprice: 'XAF6...',
                      vendu: ' 160 vendus',
                      reduction: '-39%',
                      note: '5',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Votre selection mode',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'voir plus',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SelectionMode(
                      image: 'assets/images/yezzy.jpg',
                      name: 'yezzy booster 700 V2',
                      newprice: '7.018',
                      oldprice: 'XAF8...',
                      vendu: ' +1000 vendus',
                      reduction: '-20%',
                      note: '4.6',
                    ),
                    SelectionMode(
                      image: 'assets/images/',
                      name: 'yezzy booster 700 V2',
                      newprice: '1.108',
                      oldprice: 'XAF2...',
                      vendu: ' +5000 vendus',
                      reduction: '-53%',
                      note: '4.5',
                    ),
                    SelectionMode(
                      image: 'assets/images/',
                      name: 'yezzy booster 700 V2',
                      newprice: '8.373',
                      oldprice: 'XAF1...',
                      vendu: ' 315 vendus',
                      reduction: '-53%',
                      note: '4.7',
                    ),
                    SelectionMode(
                      image: 'assets/images/',
                      name: 'yezzy booster 700 V2',
                      newprice: '733',
                      oldprice: 'XAF6...',
                      vendu: ' 160 vendus',
                      reduction: '-39%',
                      note: '5',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    SelectionMode(
                      image: 'assets/images/',
                      name: 'yezzy booster 700 V2',
                      newprice: '7.018',
                      oldprice: 'XAF8...',
                      vendu: ' +1000 vendus',
                      reduction: '-20%',
                      note: '4.6',
                    ),
                    SelectionMode(
                      image: 'assets/images/',
                      name: 'yezzy booster 700 V2',
                      newprice: '1.108',
                      oldprice: 'XAF2...',
                      vendu: ' +5000 vendus',
                      reduction: '-53%',
                      note: '4.5',
                    ),
                    SelectionMode(
                      image: 'assets/images/',
                      name: 'yezzy booster 700 V2',
                      newprice: '8.373',
                      oldprice: 'XAF1...',
                      vendu: ' 315 vendus',
                      reduction: '-53%',
                      note: '4.7',
                    ),
                    SelectionMode(
                      image: 'assets/images/',
                      name: 'yezzy booster 700 V2',
                      newprice: '733',
                      oldprice: 'XAF6...',
                      vendu: ' 160 vendus',
                      reduction: '-39%',
                      note: '5',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    SelectionMode(
                      image: 'assets/images/',
                      name: 'yezzy booster 700 V2',
                      newprice: '7.018',
                      oldprice: 'XAF8...',
                      vendu: ' +1000 vendus',
                      reduction: '-20%',
                      note: '4.6',
                    ),
                    SelectionMode(
                      image: 'assets/images/',
                      name: 'yezzy booster 700 V2',
                      newprice: '1.108',
                      oldprice: 'XAF2...',
                      vendu: ' +5000 vendus',
                      reduction: '-53%',
                      note: '4.5',
                    ),
                    SelectionMode(
                      image: 'assets/images/',
                      name: 'yezzy booster 700 V2',
                      newprice: '8.373',
                      oldprice: 'XAF1...',
                      vendu: ' 315 vendus',
                      reduction: '-53%',
                      note: '4.7',
                    ),
                    SelectionMode(
                      image: 'assets/images/',
                      name: 'yezzy booster 700 V2',
                      newprice: '733',
                      oldprice: 'XAF6...',
                      vendu: ' 160 vendus',
                      reduction: '-39%',
                      note: '5',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
