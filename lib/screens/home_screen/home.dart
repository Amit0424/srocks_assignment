import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_studio_assignment/screens/home_screen/widgets/main_service_card.dart';
// import 'package:music_studio_assignment/screens/news_screen/news.dart';
// import 'package:music_studio_assignment/screens/projects_screen/projects.dart';
// import 'package:music_studio_assignment/screens/track_box_screen/track_box.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  int _selectedIndex = 0;

  // final List<Widget> _pages = [
  //   const Home(),
  //   const News(),
  //   const TrackBox(),
  //   const Projects(),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xffA90140),
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Color(0xff18171c),
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff18171c),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xffA90140), Color(0xff550120)]),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: _controller,
                              focusNode: _focusNode,
                              decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: EdgeInsets.all(12.h),
                                  child: SvgPicture.asset(
                                    "assets/svgs/Search.svg",
                                  ),
                                ),
                                suffixIcon: SizedBox(
                                  width: 20.w,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        decoration: const BoxDecoration(
                                            color: Color(0xff45454f),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50))),
                                        width: 2.w,
                                        height: 20.h,
                                      ),
                                      SvgPicture.asset("assets/svgs/mic.svg"),
                                    ],
                                  ),
                                ),
                                hintText: 'Search "Punjabi Lyrics"',
                                hintStyle:
                                    const TextStyle(color: Color(0xff61616b)),
                                filled: true,
                                fillColor: const Color(0xff18171c),
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  borderSide: BorderSide(
                                    color: Color(0xff18171c),
                                  ),
                                ),
                              ),
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/pngs/avatar.png"),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 13.h,
                      ),
                      Text(
                        "Claim your",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.h,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Free Demo",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 45.h,
                            fontFamily: "Lobster"),
                      ),
                      Text(
                        "for custom Music Production",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.h,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.white,
                            fixedSize: Size(120.w, 36.h)),
                        child: Text(
                          "Book Now",
                          style: TextStyle(
                            fontSize: 13.h,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: -25.w,
                  bottom: 10.h,
                  child: SvgPicture.asset("assets/svgs/disc.svg"),
                ),
                Positioned(
                  right: -37.w,
                  bottom: 10.h,
                  child: SvgPicture.asset("assets/svgs/keyboard.svg"),
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              "Hire hand-picked Pros for popular music services",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.h,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            const MainServiceCard(
              title: "Music Production",
              subTitle: "Custom instrumentals & film scoring",
              iconName: "assets/svgs/icon1.svg",
              bgName: "assets/pngs/bg1.png",
            ),
            SizedBox(
              height: 10.h,
            ),
            const MainServiceCard(
              title: "Mixing & Mastering",
              subTitle: "Make your tracks Radio-ready",
              iconName: "assets/svgs/icon2.svg",
              bgName: "assets/pngs/bg2.png",
            ),
            SizedBox(
              height: 10.h,
            ),
            const MainServiceCard(
              title: "Lyrics Writing",
              subTitle: "Turn feelings into lyrics",
              iconName: "assets/svgs/icon3.svg",
              bgName: "assets/pngs/bg3.png",
            ),
            SizedBox(
              height: 10.h,
            ),
            const MainServiceCard(
              title: "Vocals",
              subTitle: "Vocals that bring your lyrics to life",
              iconName: "assets/svgs/icon4.svg",
              bgName: "assets/pngs/bg4.png",
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 65.h,
        decoration: const BoxDecoration(
            color: Color(0xff18171c),
            boxShadow: [
              BoxShadow(
                color: Color(0xff2c2d31),
                blurRadius: 2,
                offset: Offset(0, -2),
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            )),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: Colors.white,
          unselectedItemColor: const Color(0xff61616b),
          selectedFontSize: 12.h,
          unselectedFontSize: 12.h,
          iconSize: 24.h,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svgs/home_icon.svg",
                colorFilter: const ColorFilter.mode(
                  Color(0xff61616b),
                  BlendMode.srcIn,
                ),
              ),
              activeIcon: Column(
                children: [
                  SvgPicture.asset(
                    "assets/svgs/ellipse.svg",
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SvgPicture.asset(
                    "assets/svgs/home_icon.svg",
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ],
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/svgs/news_icon.svg"),
              activeIcon: Column(
                children: [
                  SvgPicture.asset(
                    "assets/svgs/ellipse.svg",
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SvgPicture.asset(
                    "assets/svgs/news_icon.svg",
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ],
              ),
              label: 'News',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/svgs/trackBox_icon.svg"),
              activeIcon: Column(
                children: [
                  SvgPicture.asset(
                    "assets/svgs/ellipse.svg",
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SvgPicture.asset(
                    "assets/svgs/trackBox_icon.svg",
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ],
              ),
              label: 'TrackBox',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/svgs/projects_icon.svg"),
              activeIcon: Column(
                children: [
                  SvgPicture.asset(
                    "assets/svgs/ellipse.svg",
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SvgPicture.asset(
                    "assets/svgs/projects_icon.svg",
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ],
              ),
              label: 'Projects',
            ),
          ],
        ),
      ),
    );
  }
}
