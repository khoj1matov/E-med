import 'package:emed/core/components/text_style_const.dart';
import 'package:emed/core/constants/color_const.dart';
import 'package:emed/views/cart/view/cart_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShowSnackBar {
  Widget alertDialg(BuildContext context) {
    return AlertDialog(backgroundColor: Colors.transparent,
                  elevation: 0,
                  content: Container(
                    height: 346,
                    width: 329,
                    decoration: BoxDecoration(
                        color: ColorConst.kPrimaryWhite,
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('assets/images/union.svg'),
                        Text(
                          'Your have successfully booked an appointment',
                          style: MyTextStyle.cancelTextStyle
                        ),
                        Text(
                          'You can go to Mavlonov Boburjon on January 24 at 10:00 - 11:00',
                          style: MyTextStyle.cancelTextStyle,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(
                              MediaQuery.of(context).size.width,
                              54,
                            ),
                            elevation: 0,
                            primary: ColorConst.splashScreenColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              '/cart',
                              (route) => false,
                            );
                          },
                          child: Text('Go Home'),
                        ),
                      ],
                    ),
                  ),
                );
  }
}
// showDialog(
//               context: context,
//               builder: (_) {
//                 return AlertDialog(
//                   backgroundColor: Colors.transparent,
//                   elevation: 0,
//                   content: Container(
//                     height: 346,
//                     width: 329,
//                     decoration: BoxDecoration(
//                         color: ConstColor.colorWhite,
//                         borderRadius: BorderRadius.circular(12)),
//                     padding: const EdgeInsets.all(24),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         SvgPicture.asset('assets/images/union.svg'),
//                         Text(
//                           'Your have successfully booked an appointment',
//                           style: MyTextStyle.textStyle(
//                               size: 20, fontWeight: FontWeight.w600),
//                         ),
//                         Text(
//                           'You can go to Mavlonov Boburjon on January 24 at 10:00 - 11:00',
//                           style: MyTextStyle.textStyle(),
//                         ),
//                         ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             fixedSize: Size(
//                               MediaQuery.of(context).size.width,
//                               54,
//                             ),
//                             elevation: 0,
//                             primary: ConstColor.colorBlue,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                           ),
//                           onPressed: () {
//                             Navigator.pushNamedAndRemoveUntil(
//                               context,
//                               '/cart',
//                               (route) => false,
//                             );
//                             CartView.currentIndex = 2;
//                           },
//                           child: Text('Go Home'),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             );