import 'package:armada/screens/cartscreen.dart';
import 'package:armada/screens/categoryscreen.dart';
import 'package:armada/widgets/featuredwidget.dart';
import 'package:armada/widgets/freqorderedwidget.dart';
import 'package:armada/widgets/hotdealwidget.dart';
import 'package:armada/widgets/slidingwidget.dart';
import 'package:armada/widgets/subcategorywidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFf6f6f6),
        surfaceTintColor: const Color(0xFFf6f6f6),
        toolbarHeight: 48.h,
        leading: Padding(
            padding: EdgeInsets.only(
              left: 15.w,
              top: 15.h,
              bottom: 15.h,
            ),
            child: PopupMenuButton(
                surfaceTintColor: const Color(0xFFf6f6f6),
                constraints:
                    const BoxConstraints.expand(width: 210, height: 300),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: SvgPicture.asset(
                  'assets/svg/home/menu.svg',
                  width: 10,
                ),
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 20, bottom: 20),
                        child: SvgPicture.asset('assets/svg/home/clear.svg'),
                      ),
                    ),
                    const PopupMenuItem(
                      child: Padding(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text('Terms and Policy'), Divider()],
                        ),
                      ),
                    ),
                    const PopupMenuItem(
                      child: Center(
                          child: Padding(
                        padding: EdgeInsets.only(bottom: 25),
                        child: Text('V.1.00.33'),
                      )),
                    )
                  ];
                })),
        title: SvgPicture.asset(
          'assets/svg/logo.svg',
          width: 170,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.h),
            child: GestureDetector(
              child: SvgPicture.asset(
                'assets/svg/home/cart.svg',
                height: 20.h,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CartScreen()));
              },
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 20.w),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CategoryScreen()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    height: 34.h,
                    color: const Color.fromARGB(244, 175, 25, 30),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/svg/home/categories.svg',
                          height: 12,
                        ),
                        Text(
                          '  Categories',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          20.0), // Adjust the radius as needed
                      child: Container(
                        height: 34.h,
                        decoration: BoxDecoration(
                          color: Colors.white, // Set the background color
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 2,
                              offset: const Offset(-2, 3),
                              blurStyle: BlurStyle.outer,
                              spreadRadius: 0.7,
                            )
                          ],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              //hintText: 'Search',
                              prefixIcon: Padding(
                                padding: EdgeInsets.symmetric(vertical: 11.h),
                                child: SvgPicture.asset(
                                  'assets/svg/home/search.svg',
                                ),
                              ),
                              border: InputBorder.none,
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: SvgPicture.asset(
                                    'assets/svg/home/clear.svg'),
                              )),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                ],
              ),
              SizedBox(height: 15.h),
              SizedBox(
                width: 410.w,
                height: 230.h,
                child: const SlidingWidget(),
              ),
              Row(
                children: [
                  SizedBox(width: 20.w),
                  Text(
                    'Featured Sub Categories',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: const Color.fromARGB(255, 100, 54, 26)),
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              Container(
                height: 120.h,
                width: double.infinity,
                child: const SubCategory(),
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  SizedBox(width: 20.w),
                  Text(
                    'Featured Categories',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: const Color.fromARGB(255, 100, 54, 26)),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Container(
                width: double.infinity,
                height: 160,
                child: const FeaturedCategory(),
              ),
              Row(
                children: [
                  SizedBox(width: 20.w),
                  Text(
                    'Frequently Ordered',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: const Color.fromARGB(255, 100, 54, 26)),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              /* const SizedBox(
              height: 980,
              width: double.infinity,
              child: ,
            ), */

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: FrequentlyOrdered(),
              ),
              SizedBox(height: 15.h),
              Row(
                children: [
                  SizedBox(width: 20.w),
                  Text(
                    'Hot Deals',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: const Color.fromARGB(255, 100, 54, 26)),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              const SizedBox(
                height: 200,
                width: double.infinity,
                child: HotDeals(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
