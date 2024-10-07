import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bloc_project/newsappbloc_bloc.dart';

void main() {
  runApp(const MyApp());
}

bool switchSearchView = false;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    UlmoScreen(),
    ShoppingScreen(),
    LikedScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double hc(double inp) => size.height * (inp / 812);
    double wc(double inp) => size.width * (inp / 375);
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: hc(100),
        child: BottomNavigationBar(
          iconSize: hc(32),
          currentIndex: _currentIndex,
          onTap: (index) {
            if (switchSearchView == false) {
              setState(() {
                _currentIndex = index;
              });
            }
          },
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/ulmologo.png'),
                  color: Colors.grey,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/shoppingbag.png"),
                    color: Colors.grey),
                label: ''),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/heart.png"),
                    color: Colors.grey),
                label: ''),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/profile.png"),
                    color: Colors.grey),
                label: '')
          ],
        ),
      ),
    );
  }
}

class UlmoScreen extends StatefulWidget {
  const UlmoScreen({super.key});

  @override
  State<UlmoScreen> createState() => _UlmoScreenState();
}

class _UlmoScreenState extends State<UlmoScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double hc(double inp) => size.height * (inp / 812);
    double wc(double inp) => size.width * (inp / 375);

    if (switchSearchView == false) {
      return Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: hc(60),
            ),
            SizedBox(
              height: hc(58),
              child: Center(
                  child: Text("ulmo",
                      style: GoogleFonts.poppins(
                          fontSize: wc(32), fontWeight: FontWeight.w600))),
            ),
            SizedBox(
              height: hc(20),
            ),
            SizedBox(
              height: hc(80),
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: wc(16), vertical: hc(8)),
                child: SearchBar(
                  hintText: "Search",
                  hintStyle: MaterialStateProperty.all(GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: wc(16),
                    color: Color(0xff9E9E9E),
                  )),
                  leading: Padding(
                    padding: EdgeInsets.symmetric(horizontal: wc(10)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: wc(24),
                          color: Color(0xff9E9E9E),
                        ),
                      ],
                    ),
                  ),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
                  elevation: MaterialStateProperty.all(0),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: wc(16.0), vertical: hc(16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/sideshow1.png',
                          fit: BoxFit.fitWidth,
                          height: wc(88),
                          width: wc(88),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(wc(8.0)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: hc(40),
                            ),
                            Text(
                              "best of \n2020",
                              style: GoogleFonts.poppins(
                                  fontSize: wc(12),
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/sideshow2.png',
                          fit: BoxFit.fitWidth,
                          height: wc(88),
                          width: wc(88),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(wc(8.0)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: hc(40),
                            ),
                            Text(
                              "the golden \nhour",
                              style: GoogleFonts.poppins(
                                  fontSize: wc(12),
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/sideshow3.png',
                          fit: BoxFit.fitHeight,
                          height: wc(88),
                          width: wc(88),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(wc(8.0)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: hc(40),
                            ),
                            Text(
                              "lovely \nkitchen",
                              style: GoogleFonts.poppins(
                                  fontSize: wc(12),
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(hc(8)),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: wc(343),
                    height: hc(100),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(wc(16)),
                          child: Text(
                            "bedroom",
                            style: GoogleFonts.poppins(
                                fontSize: wc(24),
                                fontWeight: FontWeight.w600,
                                color: Color(0xff212121)),
                          ),
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/images/containerimage1.png',
                          width: wc(82),
                          height: hc(100),
                          fit: BoxFit.fitWidth,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: hc(16),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        switchSearchView = false;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SearchScreen()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xfff5f5f5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: wc(343),
                      height: hc(100),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(wc(16)),
                            child: Text(
                              "living room",
                              style: GoogleFonts.poppins(
                                  fontSize: wc(24),
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff212121)),
                            ),
                          ),
                          Spacer(),
                          Image.asset(
                            'assets/images/containerimage2.png',
                            width: wc(82),
                            height: hc(100),
                            fit: BoxFit.fitWidth,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: hc(16),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: wc(343),
                    height: hc(100),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(wc(16)),
                          child: Text(
                            "kitchen",
                            style: GoogleFonts.poppins(
                                fontSize: wc(24),
                                fontWeight: FontWeight.w600,
                                color: Color(0xff212121)),
                          ),
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/images/containerimage3.png',
                          width: wc(82),
                          height: hc(100),
                          fit: BoxFit.fitWidth,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
      );
    } else {
      return Scaffold(
        body: Column(
          children: [
            SizedBox(height: hc(44)),
            Container(
              height: hc(56),
              child: Row(
                children: [
                  SizedBox(width: wc(16)),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                      setState(() {
                        switchSearchView = false;
                      });
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: wc(24),
                    ),
                  ),
                  SizedBox(
                    width: wc(100.5),
                  ),
                  Text(
                    "Living Room",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: wc(16),
                        color: Colors.black),
                  )
                ],
              ),
            ),
            SearchBar(
              hintText: "Search",
              hintStyle: MaterialStateProperty.all(GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: wc(16),
                color: Color(0xff9E9E9E),
              )),
              leading: Padding(
                padding: EdgeInsets.symmetric(horizontal: wc(10)),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: wc(24),
                      color: Color(0xff9E9E9E),
                    ),
                  ],
                ),
              ),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0))),
              elevation: MaterialStateProperty.all(0),
            ),
          ],
        ),
      );
    }
  }
}

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class LikedScreen extends StatelessWidget {
  const LikedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double hc(double inp) => size.height * (inp / 812);
    double wc(double inp) => size.width * (inp / 375);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: hc(44)),
          Container(
            height: hc(56),
            child: Row(
              children: [
                SizedBox(width: wc(16)),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                    setState(() {
                      switchSearchView = false;
                    });
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: wc(24),
                  ),
                ),
                SizedBox(
                  width: wc(100.5),
                ),
                Text(
                  "Living Room",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: wc(16),
                      color: Colors.black),
                )
              ],
            ),
          ),
          Container(
            height: hc(80),
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: wc(16), vertical: hc(8)),
              child: SearchBar(
                hintText: "Search",
                hintStyle: MaterialStateProperty.all(GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: wc(16),
                  color: Color(0xff9E9E9E),
                )),
                leading: Padding(
                  padding: EdgeInsets.symmetric(horizontal: wc(10)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: wc(24),
                        color: Color(0xff9E9E9E),
                      ),
                    ],
                  ),
                ),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0))),
                elevation: MaterialStateProperty.all(0),
              ),
            ),
          ),
          Container(
            height: hc(64),
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: wc(16), vertical: hc(16)),
              child: Text(
                "categories",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: wc(24)),
              ),
            ),
          ),
          Container(
            height: hc(64),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: wc(16),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset('assets/icons/furniture.png',
                      height: hc(36), width: hc(36), fit: BoxFit.fitWidth),
                ),
                SizedBox(
                  width: wc(16),
                ),
                Text("Furniture", style: GoogleFonts.poppins(
                  fontSize: hc(16), fontWeight: FontWeight.w400
                ),),

              ],
            ),
          ),
          Container(
            height: hc(64),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: wc(16),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset('assets/icons/lighting.png',
                      height: hc(36), width: hc(36), fit: BoxFit.fitWidth),
                ),
                SizedBox(
                  width: wc(16),
                ),
                Text("Lighting", style: GoogleFonts.poppins(
                    fontSize: hc(16), fontWeight: FontWeight.w400
                ),),

              ],
            ),
          ),
          Container(
            height: hc(64),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: wc(16),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset('assets/icons/rugs.png',
                      height: hc(36), width: hc(36), fit: BoxFit.fitWidth),
                ),
                SizedBox(
                  width: wc(16),
                ),
                Text("Rugs", style: GoogleFonts.poppins(
                    fontSize: hc(16), fontWeight: FontWeight.w400
                ),),

              ],
            ),
          ),
          Container(
            height: hc(64),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: wc(16),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset('assets/icons/mirrors.png',
                      height: hc(36), width: hc(36), fit: BoxFit.fitWidth),
                ),
                SizedBox(
                  width: wc(16),
                ),
                Text("Mirrors", style: GoogleFonts.poppins(
                    fontSize: hc(16), fontWeight: FontWeight.w400
                ),),

              ],
            ),
          ),
          Container(
            height: hc(64),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: wc(16),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset('assets/icons/blankets.png',
                      height: hc(36), width: hc(36), fit: BoxFit.fitWidth),
                ),
                SizedBox(
                  width: wc(16),
                ),
                Text("Blankets", style: GoogleFonts.poppins(
                    fontSize: hc(16), fontWeight: FontWeight.w400
                ),),

              ],
            ),
          ),
          Container(
            height: hc(64),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: wc(16),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset('assets/icons/cushions.png',
                      height: hc(36), width: hc(36), fit: BoxFit.fitWidth),
                ),
                SizedBox(
                  width: wc(16),
                ),
                Text("Cushions", style: GoogleFonts.poppins(
                    fontSize: hc(16), fontWeight: FontWeight.w400
                ),),

              ],
            ),
          ),
          Container(
            height: hc(64),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: wc(16),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset('assets/icons/curtains.png',
                      height: hc(36), width: hc(36), fit: BoxFit.fitWidth),
                ),
                SizedBox(
                  width: wc(16),
                ),
                Text("Curtains", style: GoogleFonts.poppins(
                    fontSize: hc(16), fontWeight: FontWeight.w400
                ),),

              ],
            ),
          )
        ],
      ),
    );
  }
}
