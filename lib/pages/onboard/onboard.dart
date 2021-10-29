import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import '../dashoard/dashboard.dart';

class OnboardPage extends StatelessWidget {
  static String id = 'OnboardPage';
  @override
  Widget build(BuildContext context) {
    return OnboardPageBody();
  }
}

class OnboardPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          addVerticalSpace(70.h),
          _logoCard(),
          addVerticalSpace(40.h),
          Text(
            'The Bank from \nthe Future',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w900),
          ),
          addVerticalSpace(7.h),
          Text(
            'Secure transactions since beginning of time, long before creation of time...',
            style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black54),
          ),
          Spacer(),
          _authenticationButtons(),
          addVerticalSpace(30.h),
        ],
      ),
    ));
  }

  Row _authenticationButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Button(
            'SignUp',
          ),
        ),
        addHorizontalSpace(20),
        Expanded(child: Button('Login')),
      ],
    );
  }

  Container _logoCard() {
    return Container(
      padding: EdgeInsets.only(bottom: 19.h),
      alignment: Alignment.bottomLeft,
      height: 300.h,
      width: 250.w,
      color: COLOR_SUN_AMBER,
      child: RotatedBox(
        quarterTurns: 3,
        child: Text(
          'neonixbank.',
          style: TextStyle(
              fontSize: 40.sp,
              fontWeight: FontWeight.w900,
              color: COLOR_DARK_BLUE),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button(this.label);

  final String label;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.r)),
          side: BorderSide(color: Colors.black, width: 2.w),
          minimumSize: Size(360.w, 48.h),
        ),
        onPressed: () => Navigator.pushNamed(context, DashBoard.id),
        child: Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15.sp,
            fontWeight: FontWeight.w900,
          ),
        ));
  }

  contentBox() {
    return Container(
        height: 130.w,
        width: 250.w,
        decoration: BoxDecoration(
            color: COLOR_SUN_AMBER, borderRadius: BorderRadius.circular(4)),
        margin: EdgeInsets.only(
          top: 30.r,
        ),
        padding: EdgeInsets.only(top: 30.r, left: 10.w, right: 10.w),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Title',
              style: subHeaderTextStyle,
            ),
            addVerticalSpace(10),
            Text(
              'Here gose the description of the sdsdjhh\n'
              'New Line',
              style: labelTextStyle,
            ),
            Align(
              child: FlatButton(onPressed: () {}, child: Text('Pop')),
            )
          ],
        ));
  }

  _positionedWidget() {
    return Positioned(
        right: 360 / 3,
        child: CircleAvatar(
          radius: 25.r,
          backgroundColor: COLOR_SUN_AMBER,
        ));
  }
}
