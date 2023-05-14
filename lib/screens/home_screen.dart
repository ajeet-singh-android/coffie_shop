import 'package:coffie_shop/screens/home_bottom_navigation.dart';
import 'package:coffie_shop/screens/item_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(() {
      _handleTabSelection;
    });
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFF1717),
      body: Padding(
        padding: EdgeInsets.only(top: 15, right: 20, left: 20),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.sort,
                  color: Colors.white,
                  size: 26,
                ),
                Icon(
                  Icons.notifications_active,
                  color: Colors.white,
                  size: 26,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "It's a Great Day for Coffee",
              style: GoogleFonts.roboto(fontSize: 19, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 45,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0x4A757070)),
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0x4A757070)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "find your coffee",
                      hintStyle: GoogleFonts.roboto(
                        color: Colors.white.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      )),
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TabBar(
                controller: _tabController,
                labelColor: Color(0xfff59c00),
                unselectedLabelColor: Colors.white.withOpacity(0.5),
                isScrollable: true,
                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xfff59c00),
                    ),
                    insets: EdgeInsets.symmetric(horizontal: 15)
                ),
                labelStyle: TextStyle(
                    fontSize: 13,fontWeight: FontWeight.w500
                ),
                labelPadding: EdgeInsets.symmetric(horizontal: 10),
                tabs: [
                  Tab(text: "Hot Coffee",),
                  Tab(text: "Cold Coffee",),
                  Tab(text: "Cappiccino",),
                  Tab(text: "Americian Coffee",),
                ]),

            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: [
                  CoffeeScreen(),
                  CoffeeScreen(),
                  CoffeeScreen(),
                  CoffeeScreen(),
                ][_tabController.index],
              ),
            ),

          ],
        ),
      ),
          bottomNavigationBar: HomeBottomNavigation(),
    ),
    );
  }
}
