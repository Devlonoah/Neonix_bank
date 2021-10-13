import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home/pages/carddetails/card_detail.dart';

import 'package:home/pages/constants.dart';

class DashBoard extends StatelessWidget {
  static String id = 'DashBoard';
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DashBoardBody();
  }
}

class DashBoardBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBAr(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            addVerticalSpace(50),
            _accountBalance(),
            addVerticalSpace(30),
            _quickAcces(),
            addVerticalSpace(40),
            AddedCards(),
            addVerticalSpace(40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('SEND MONEY', style: subHeaderTextStyle),
                addVerticalSpace(20),
                Container(
                  height: 90.h,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, _) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.w),
                        height: 90.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          color: COLOR_SUN_AMBER,
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                      );
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Column _quickAcces() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'QUICK ACCESS',
        style: subHeaderTextStyle,
      ),
      addVerticalSpace(30),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            QuickAccessButton(icon: CupertinoIcons.share_up, label: 'Transact'),
            QuickAccessButton(icon: CupertinoIcons.home, label: 'Loans'),
            QuickAccessButton(icon: CupertinoIcons.speaker, label: 'Support'),
            QuickAccessButton(icon: CupertinoIcons.rocket, label: 'Offers'),
          ],
        ),
      )
    ]);
  }

  Column _accountBalance() {
    return Column(
      children: [
        Text(
          'Total Assets',
          style: TextStyle(
            color: COLOR_DARK_BLUE,
            fontWeight: FontWeight.w700,
            fontSize: 13.sp,
          ),
        ),
        addVerticalSpace(4.h),
        Container(
          color: COLOR_SUN_AMBER,
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
          child: Text(
            '\$45,321.09',
            style: TextStyle(
              color: COLOR_DARK_BLUE,
              fontWeight: FontWeight.w900,
              fontSize: 30.sp,
            ),
          ),
        ),
      ],
    );
  }

  AppBar _appBAr() {
    return AppBar(
      shadowColor: COLOR_SUN_AMBER,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 8.h),
        child: Container(
          alignment: Alignment.center,
          width: 15.w,
          decoration: BoxDecoration(
              color: COLOR_SUN_AMBER, borderRadius: BorderRadius.circular(3.r)),
          child: Text('neonixbank',
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF27293e))),
        ),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.menu, color: COLOR_ICON)),
        IconButton(
            onPressed: () {}, icon: Icon(Icons.search, color: COLOR_ICON)),
      ],
      leadingWidth: double.infinity,
    );
  }
}

class AddedCards extends StatelessWidget {
  const AddedCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('MY CARDS', style: subHeaderTextStyle),
        addVerticalSpace(20),
        Row(
          children: [
            ReusableCreditCard(),
            addHorizontalSpace(20),
            ReusableCreditCard(
              isDark: true,
              cardNumberLabel: '3989',
            ),
          ],
        )
      ],
    );
  }
}

class ReusableCreditCard extends StatelessWidget {
  const ReusableCreditCard(
      {Key? key, this.isDark = false, this.cardNumberLabel = '3728'})
      : super(key: key);

  final String cardNumberLabel;
  final bool isDark;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, CardDetailsPage.id);
      },
      child: Container(
        height: 100.h,
        width: 150.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: isDark ? COLOR_DARK_BLUE : COLOR_SUN_AMBER,
        ),
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('neonix',
                    style: labelTextStyle.copyWith(
                        color: isDark ? COLOR_WHITE : COLOR_DARK_BLUE)),
                addVerticalSpace(15),
                Text(
                  '**** **** ****',
                  style:
                      TextStyle(color: isDark ? COLOR_WHITE : COLOR_DARK_BLUE),
                ),
                Text(
                  cardNumberLabel,
                  style: TextStyle(
                      color: isDark ? COLOR_WHITE : COLOR_DARK_BLUE,
                      fontWeight: FontWeight.w900,
                      fontSize: 20.sp),
                ),
                Spacer(),
                Text('Bernarr Dominik',
                    style: labelTextStyle.copyWith(
                        fontWeight: FontWeight.w900,
                        color: isDark ? COLOR_WHITE : COLOR_DARK_BLUE))
              ],
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Opacity(
                opacity: 0.15,
                child: Image.asset(
                  'assets/visa.png',
                  height: 40.h,
                  width: 40.h,
                  color: isDark ? COLOR_WHITE : COLOR_DARK_BLUE,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuickAccessButton extends StatelessWidget {
  const QuickAccessButton({
    Key? key,
    required this.label,
    required this.icon,
  }) : super(key: key);

  final String label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 24.r,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
