import 'package:emed/core/constants/color_const.dart';
import 'package:flutter/material.dart';

class MedicationsColumn {
  static final List<Widget> medications = [
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text("1 pill"),
            const SizedBox(width: 5),
            CircleAvatar(
              radius: 2,
              backgroundColor: ColorConst.nuncOrciSedColor,
            ),
            const SizedBox(width: 5),
            const Text("2 times a day"),
          ],
        ),
        Container(
          margin: EdgeInsets.all(5),
          child: const Text("1 pill taken"),
          decoration: BoxDecoration(
            color: ColorConst.listTilleblablaColor,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ],
    ),
    Column(
      children: [
        Row(
          children: [
            const Text("1 pill"),
            CircleAvatar(
              radius: 2,
              backgroundColor: ColorConst.kPrimaryBlack,
            ),
            const Text("2 times a day"),
          ],
        ),
        Container(
          child: const Text("1 pill taken"),
          decoration: BoxDecoration(
            color: ColorConst.listTilleblablaColor,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ],
    ),
    Column(
      children: [
        Row(
          children: [
            const Text("1 pill"),
            CircleAvatar(
              radius: 2,
              backgroundColor: ColorConst.kPrimaryBlack,
            ),
            const Text("2 times a day"),
          ],
        ),
        Container(
          child: const Text("1 pill taken"),
          decoration: BoxDecoration(
            color: ColorConst.listTilleblablaColor,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ],
    ),
    Column(
      children: [
        Row(
          children: [
            const Text("1 pill"),
            CircleAvatar(
              radius: 2,
              backgroundColor: ColorConst.kPrimaryBlack,
            ),
            const Text("2 times a day"),
          ],
        ),
        Container(
          child: const Text("1 pill taken"),
          decoration: BoxDecoration(
            color: ColorConst.listTilleblablaColor,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ],
    ),
  ];
}
