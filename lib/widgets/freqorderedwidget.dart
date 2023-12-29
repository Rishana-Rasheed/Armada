import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FrequentlyOrdered extends StatefulWidget {
  const FrequentlyOrdered({super.key});

  @override
  State<FrequentlyOrdered> createState() => _FrequentlyOrderedState();
}

class _FrequentlyOrderedState extends State<FrequentlyOrdered> {
  int counter = 1;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    if (counter > 1) {
      setState(() {
        counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 19,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: .8,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5),
      itemBuilder: (context, index) => Container(
        height: 230.h,
        width: 185.w,
        //color: Colors.red,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Padding(
          padding: EdgeInsets.only(left: 10.w, top: 10.h),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/home/1.png',
                height: 100.h,
                width: 75.w,
              ),
              SizedBox(height: 4.h),
              Text(
                'Stork Toffifee 400g',
                style: TextStyle(fontSize: 12.sp),
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Cs',
                            style: TextStyle(fontSize: 10.sp),
                          ),
                          SizedBox(width: 15.w),
                          Icon(Icons.keyboard_arrow_down,
                              color: Colors.grey, size: 12.sp),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Text(
                        'AED 30.00',
                        style: TextStyle(fontSize: 8.sp, color: Colors.red),
                      ),
                    ],
                  ),
                  SizedBox(width: 4.w),
                  Container(
                    height: 25.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 253, 198, 192)
                            .withOpacity(0.5)),
                    child: OutlinedButton(
                      onPressed: () {
                        decrementCounter();
                      },
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: Colors.transparent,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          padding: EdgeInsets.only(left: 2.w, bottom: 2.h)),
                      child: Text(
                        '-',
                        style: TextStyle(fontSize: 16.sp, color: Colors.red),
                      ),
                    ),
                  ),
                  Text('$counter'),
                  Container(
                    height: 25.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(255, 253, 198, 192)
                            .withOpacity(0.5)),
                    child: OutlinedButton(
                      onPressed: () {
                        incrementCounter();
                      },
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: Colors.transparent,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          padding: EdgeInsets.only(left: 2.w, bottom: 2.h)),
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 16.sp, color: Colors.red),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Row(
                children: [
                  Container(
                    height: 25.h,
                    width: 25.w,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: Color.fromARGB(255, 253, 198, 192)
                                .withOpacity(0.7),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          padding: EdgeInsets.only(left: 2.w, bottom: 2.h)),
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 16.sp, color: Colors.red),
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Text(
                    'Add Another UOM',
                    style: TextStyle(fontSize: 12.sp),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
