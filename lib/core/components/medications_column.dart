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
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: const Text("1 pill taken"),
          decoration: BoxDecoration(
            color: ColorConst.listTilleblablaColor,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text("1 teaspoon"),
            const SizedBox(width: 5),
            CircleAvatar(
              radius: 2,
              backgroundColor: ColorConst.nuncOrciSedColor,
            ),
            const SizedBox(width: 5),
            const Text("3 times a day"),
          ],
        ),
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: const Text("2 teaspoon taken"),
          decoration: BoxDecoration(
            color: ColorConst.listTilleblablaColor,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text("1 teaspoon"),
            const SizedBox(width: 5),
            CircleAvatar(
              radius: 2,
              backgroundColor: ColorConst.nuncOrciSedColor,
            ),
            const SizedBox(width: 5),
            const Text("3 times a day"),
          ],
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text("1 syringe"),
            const SizedBox(width: 5),
            CircleAvatar(
              radius: 2,
              backgroundColor: ColorConst.nuncOrciSedColor,
            ),
            const SizedBox(width: 5),
            const Text("1 times a day"),
          ],
        ),
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: const Text("full taken"),
          decoration: BoxDecoration(
            color: ColorConst.listTilleblablaGreenColor,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ],
    ),
  ];
}
