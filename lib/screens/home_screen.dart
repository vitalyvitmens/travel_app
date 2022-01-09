import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/models/beach_model.dart';
import 'package:travel_app/models/popular_model.dart';
import 'package:travel_app/models/recommended_model.dart';
import 'package:travel_app/screens/selected_place_screen.dart';
import 'package:travel_app/widgets/bottom_navigation_bar.dart';
import 'package:travel_app/widgets/custom_tab_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  /// Page Controller
  final _pageController = PageController(viewportFraction: 0.877);

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarTravel(),
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            /// Custom Navigation Drawer and Search Button
            Container(
              height: 57.6,
              margin: const EdgeInsets.only(top: 28.8, left: 28.8, right: 28.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 57.6,
                    width: 57.6,
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      color: const Color(0x080a0928),
                    ),
                    child: SvgPicture.asset('assets/svg/icon_drawer.svg'),
                  ),
                  Container(
                    height: 57.6,
                    width: 57.6,
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      color: const Color(0x080a0928),
                    ),
                    child: SvgPicture.asset('assets/svg/icon_search.svg'),
                  )
                ],
              ),
            ),

            /// Text Widget for Title
            Padding(
              padding: const EdgeInsets.only(top: 18, left: 28.8, right: 28.8),
              child: Text(
                'Береги Природу -\nМать Вашу!',
                style: GoogleFonts.playfairDisplay(
                    fontSize: 40, fontWeight: FontWeight.w700),
              ),
            ),

            /// Custom Tab bar with Custom Indicator
            Container(
              height: 30,
              margin: const EdgeInsets.only(left: 14.4, top: 18.8),
              child: DefaultTabController(
                length: 4,
                child: TabBar(
                    labelPadding:
                        const EdgeInsets.only(left: 14.4, right: 14.4),
                    indicatorPadding:
                        const EdgeInsets.only(left: 14.4, right: 14.4),
                    isScrollable: true,
                    labelColor: const Color(0xFF000000),
                    unselectedLabelColor: const Color(0xFF8a8a8a),
                    labelStyle: GoogleFonts.lato(
                        fontSize: 14, fontWeight: FontWeight.w700),
                    unselectedLabelStyle: GoogleFonts.lato(
                        fontSize: 14, fontWeight: FontWeight.w700),
                    indicator: RoundedRectangleTabIndicator(
                        color: const Color(0xFF000000),
                        weight: 2.4,
                        width: 14.4),
                    tabs: const [
                      Tab(
                        child: Text('Рекомендуем'),
                      ),
                      Tab(
                        child: Text('Популярное'),
                      ),
                      Tab(
                        child: Text('Новое Направление'),
                      ),
                      Tab(
                        child: Text('Жемчужина'),
                      )
                    ]),
              ),
            ),

            /// ListView widget with PageView
            /// Recommendations Section
            Container(
              height: 218.4,
              margin: const EdgeInsets.only(top: 16),
              child: PageView(
                physics: const BouncingScrollPhysics(),
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  recommendations.length,
                  (int index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SelectedPlaceScreen(
                              recommendedModel: recommendations[index])));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 28.8),
                      width: 333.6,
                      height: 218.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: CachedNetworkImageProvider(
                              recommendations[index].image),
                        ),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 19.2,
                            left: 19.2,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4.8),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaY: 19.2, sigmaX: 19.2),
                                child: Container(
                                  height: 36,
                                  padding: const EdgeInsets.only(
                                      left: 16.72, right: 14.4),
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    children: <Widget>[
                                      SvgPicture.asset(
                                          'assets/svg/icon_location.svg'),
                                      const SizedBox(
                                        width: 9.52,
                                      ),
                                      Text(
                                        recommendations[index].name,
                                        style: GoogleFonts.lato(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                            fontSize: 16.8),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            /// Dots Indicator
            /// Using SmoothPageIndicator Library
            Padding(
              padding: const EdgeInsets.only(left: 28.8, top: 18.8),
              child: SmoothPageIndicator(
                controller: _pageController,
                count: recommendations.length,
                effect: const ExpandingDotsEffect(
                    activeDotColor: Color(0xFF8a8a8a),
                    dotColor: Color(0xFFababab),
                    dotHeight: 8.8,
                    dotWidth: 8.8,
                    spacing: 8.8),
              ),
            ),

            /// Text Widget for Popular Categories
            Padding(
              padding: const EdgeInsets.only(top: 18, left: 28.8, right: 28.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: FittedBox(
                      child: Text(
                        'Популярные Категории',
                        style: GoogleFonts.playfairDisplay(
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: FittedBox(
                      child: Text(
                        'Показать Все',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF8a8a8a),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            /// ListView for Popular Categories Section
            Container(
              margin: const EdgeInsets.only(top: 23.6),
              height: 45.6,
              child: ListView.builder(
                itemCount: populars.length,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(left: 28.8, right: 9.6),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 19.2),
                    height: 45.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      color: Color(populars[index].color),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(
                          width: 19.2,
                        ),
                        Image.asset(
                          populars[index].image,
                          height: 16.8,
                        ),
                        const SizedBox(
                          width: 19.2,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),

            /// ListView for Beach Section
            Container(
              margin: const EdgeInsets.only(top: 28.8, bottom: 16.8),
              height: 124.8,
              child: ListView.builder(
                itemCount: beaches.length,
                padding: const EdgeInsets.only(left: 28.8, right: 12),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    height: 124.8,
                    width: 188.4,
                    margin: const EdgeInsets.only(right: 16.8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(beaches[index].image),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
