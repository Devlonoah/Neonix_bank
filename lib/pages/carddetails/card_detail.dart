import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home/pages/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardDetailsPage extends StatelessWidget {
  static String id = 'CardDetailsPage';
  const CardDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardDetailsPageBody();
  }
}

class CardDetailsPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: COLOR_SUN_AMBER,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'CARD DETAILS',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            addVerticalSpace(20),
            CreditCardDetail(),
            addVerticalSpace(10),
            DotIndicator(),
            addVerticalSpace(10),
            Text('TRANSACTIONS', style: subHeaderTextStyle),
            addVerticalSpace(15),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 15,
                  shrinkWrap: true,
                  itemBuilder: (context, _) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 10.h),
                      child: Row(
                        children: [
                          Container(
                            height: 65.w,
                            width: 65.w,
                            decoration: BoxDecoration(
                                color: CupertinoColors.systemGrey5,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          addHorizontalSpace(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Netflix Refund',
                                  style: subHeaderTextStyle.copyWith(
                                      fontWeight: FontWeight.w600)),
                              addVerticalSpace(5),
                              Row(
                                children: [
                                  Text('\$134',
                                      style: subHeaderTextStyle.copyWith(
                                          fontWeight: FontWeight.w900)),
                                  Icon(CupertinoIcons.arrow_down,
                                      color: Colors.red, size: 20.r)
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '12-Jun-2021',
                                style: TextStyle(
                                    fontSize: 12.sp, color: Colors.grey[700]),
                              ),
                              addVerticalSpace(5),
                              Text(
                                '10:00 AM',
                                style: TextStyle(
                                    fontSize: 12.sp, color: Colors.grey[700]),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 4,
      position: 2,
      decorator: DotsDecorator(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          activeColor: COLOR_DARK_BLUE,
          activeSize: Size(17.w, 10.h),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r))),
    );
  }
}

class CreditCardDetail extends StatelessWidget {
  const CreditCardDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.h,
      width: 200.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.r),
        color: COLOR_SUN_AMBER,
      ),
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('neonix',
                  style: labelTextStyle.copyWith(
                      fontSize: 15.sp, fontWeight: FontWeight.w900)),
              // addVerticalSpace(15),

              Spacer(),
              Text('**** **** ****',
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 20.sp)),
              Text(
                '3728',
                style: TextStyle(
                  color: COLOR_DARK_BLUE,
                  fontWeight: FontWeight.w900,
                  fontSize: 35.sp,
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Bernarr Dominik',
                      style: labelTextStyle.copyWith(
                          fontSize: 17.sp, fontWeight: FontWeight.w700)),
                  Text('02/30',
                      style: labelTextStyle.copyWith(
                          fontSize: 17.sp, fontWeight: FontWeight.w700)),
                ],
              )
              // addVerticalSpace(25)
            ],
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Opacity(
              opacity: 0.25,
              child: Image.asset(
                'assets/visa.png',
                height: 80.h,
                width: 80.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
