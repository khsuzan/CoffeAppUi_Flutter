import 'package:coffeapp/theme/colors.dart';
import 'package:coffeapp/views/data/nav_data.dart';
import 'package:coffeapp/views/models/coffe_tile_info.dart';
import 'package:coffeapp/views/models/nav_type.dart';
import 'package:coffeapp/views/subviews/bottom_navbar.dart';
import 'package:coffeapp/views/subviews/coffe_tile.dart';
import 'package:coffeapp/views/subviews/coffe_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexed = 0;
  NavType navIndex = NavType.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.background,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset('icons/ic_menu.png', height: 26),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: CircleAvatar(
              radius: 15,
              child: ClipOval(
                child: Image.asset(
                  'images/kawsar.jpg',
                  fit: BoxFit.cover,
                  width: 30,
                  height: 30,
                ),
              ),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: MyBottomBar(
          navItems: navData,
          currentIndex: navIndex,
          onTap: (itemIndex) {
            setState(() {
              navIndex = itemIndex;
            });
          }),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              const SizedBox(
                height: 30,
              ),
              //Find the best coffe for you
              Text(
                "Find the best\ncoffee for you",
                style: GoogleFonts.poppins(
                    fontSize: 28, fontWeight: FontWeight.w600, height: 1.2),
              ),
              const SizedBox(
                height: 30,
              ),
              //SearchBar
              TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Image.asset(
                        'images/search.png',
                        height: 20,
                      ),
                    ),
                    hintText: "Find your coffee..",
                    hintStyle: GoogleFonts.poppins(color: Colors.grey[700]),
                    focusedBorder:
                        const OutlineInputBorder(borderSide: BorderSide.none),
                    enabledBorder:
                        const OutlineInputBorder(borderSide: BorderSide.none)),
                maxLines: 1,
                style: GoogleFonts.poppins(fontSize: 14, color: Colors.orange),
              ),
              const SizedBox(
                height: 35,
              ),
              //Coffe Type
              Container(
                height: 50,
                child: ListView.builder(
                    itemCount: coffeTypeList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CoffeType(
                          itemIndex: index,
                          coffeType: coffeTypeList[index][0],
                          isSelected: indexed,
                          onItemTap: (newIndex) {
                            setState(() {
                              indexed = newIndex;
                            });
                          });
                    }),
              ),
              //horizontal list view
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 1,
                    child: CoffeTile(
                      CoffeInfo(
                          image: "images/coffe.jpg",
                          name: "Cappucino",
                          flavour: "with milk",
                          price: "5.01"),
                      leftPadd: 10,
                      rightPadd: 20,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: CoffeTile(
                      CoffeInfo(
                          image: "images/latte.jpg",
                          name: "Latte",
                          flavour: "with sugar",
                          price: "4.30"),
                      leftPadd: 20,
                      rightPadd: 10,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
