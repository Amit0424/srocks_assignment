import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MainServiceCard extends StatelessWidget {
  const MainServiceCard(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.iconName,
      required this.bgName});

  final String title;
  final String subTitle;
  final String iconName;
  final String bgName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70.h,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        // color: Colors.grey,
        image: DecorationImage(
          image: AssetImage(bgName),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Container(
        width: double.infinity,
        height: 70.h,
        padding: EdgeInsets.all(15.w),
        decoration: BoxDecoration(
          color: const Color(0xff202126).withOpacity(0.9),
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(iconName),
            SizedBox(
              width: 15.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 15.h,
                  ),
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.h,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_right,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
