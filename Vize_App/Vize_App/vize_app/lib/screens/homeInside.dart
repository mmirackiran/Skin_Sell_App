import 'package:flutter/material.dart';
import 'package:vize_app/widgets/buttonItem.dart';

class HomeInside extends StatelessWidget {
  const HomeInside({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Cs Skin App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 251, 251, 251),
          body: Column(
            children: [
              Expanded(
                  child: Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(children: [
                    SearchBox(),
                    Review(),
                    Suggested(),
                    BestSeller()
                  ]),
                ),
              )),
            ],
          ),
        ));
  }

  Widget Suggested() => Container(
        child: Column(
          children: [
            TitleItem("Recommended", "See All"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  NameItem("assets/images/sug1.png", "Special Gloves",
                      "Field-Tested", "6.358,24 ₺"),
                  SizedBox(
                    width: 5,
                  ),
                  NameItem("assets/images/sug2.png", "AWP", "Factory New",
                      "3.124,34 ₺"),
                  SizedBox(
                    width: 5,
                  ),
                  NameItem("assets/images/sug3.png", "AK-47", "Well-Worn",
                      "2.917,11 ₺"),
                  SizedBox(
                    width: 5,
                  ),
                  NameItem("assets/images/sug4.png", "M4A4", "Battle-Scarred",
                      "157,08 ₺"),
                  SizedBox(
                    width: 5,
                  ),
                  NameItem("assets/images/sug5.png", "Butterfly Knife",
                      "Factory New", "36.663,24"),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            )
          ],
        ),
      );

  Widget BestSeller() => Container(
        child: Column(
          children: [
            TitleItem("Top Sellings", "See All"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  NameItem("assets/images/top1.png", "Special Gloves",
                      "Factory New", "5.691,35 ₺"),
                  SizedBox(
                    width: 5,
                  ),
                  NameItem("assets/images/top2.png", "Classic Knife",
                      "Factory New", "16.479,61 ₺"),
                  SizedBox(
                    width: 5,
                  ),
                  NameItem("assets/images/top3.png", "AWP", "Field-Tested",
                      "7.214,68 ₺"),
                  SizedBox(
                    width: 5,
                  ),
                  NameItem("assets/images/top4.png", "USP-S", "Factory New",
                      "819,05 ₺"),
                  SizedBox(
                    width: 5,
                  ),
                  NameItem("assets/images/top5.png", "Bayonet", "Well-Worn",
                      "15.383,20 ₺"),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            )
          ],
        ),
      );

  Widget Review() => Container(
        child: Column(
          children: [
            TitleItem("Review", "See All"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  NameItem("assets/images/rev1.png", "Moto Gloves",
                      "Factory New", "2.953,34 ₺"),
                  NameItem("assets/images/rev2.png", "Falchion Knife",
                      "Field-Tested", "1.435,24 ₺"),
                  NameItem("assets/images/rev3.png", "AK-47", "Factory New",
                      "780,56 ₺"),
                  NameItem("assets/images/rev4.png", "USP-S", "Well-Worn",
                      "480,89 ₺"),
                  NameItem("assets/images/rev5.png", "Moto Gloves",
                      "Minimal Wear", "1.200,56 ₺"),
                ],
              ),
            )
          ],
        ),
      );

  Widget NameItem(String photo, String city, String far, String price) =>
      Container(
          width: 195,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(0, 170, 170, 170)),
          ),
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(width: 185, photo)),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        city,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            far,
                            style: TextStyle(fontSize: 9, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ButtonItem(
                    price: price,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ));

  Padding TitleItem(String title, String link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Color.fromARGB(255, 56, 56, 56),
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          Text(
            link,
            style: TextStyle(
                color: Color.fromARGB(255, 153, 153, 153),
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget SearchBox() => Container(
        height: 50,
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Color.fromARGB(76, 170, 170, 170)),
            borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.search,
                  size: 17,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Skin Search...',
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      );
}
