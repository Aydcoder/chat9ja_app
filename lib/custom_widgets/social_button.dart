import 'package:flutter/material.dart';

socialButton({
  required String imageUrl,
  Color? color,
  bool withBg = false,
}) {
  return Container(
    padding:
        withBg == false ? const EdgeInsets.symmetric(horizontal: 20) : null,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      shape: BoxShape.rectangle,
      border: color != null
          ? Border.all(
              color: color,
              width: 2,
              style: BorderStyle.solid,
            )
          : null,
    ),
    child: Image(
      image: AssetImage(imageUrl),
      width: !withBg ? 42 : null,
    ),
  );
}
