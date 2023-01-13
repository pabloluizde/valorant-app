import 'package:flutter/material.dart';
import 'package:vava_app/themes/app_colors.dart';

class Button extends StatelessWidget {
  final Size size;
  final VoidCallback onTap;
  const Button({super.key, required this.size, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: const EdgeInsets.all(3.0),
              child: GestureDetector(
                onTap: onTap,
                child: Container(
                  height: size.height * 0.07,
                  width: size.width * 0.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.red,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 0),
                          color: AppColors.red,
                          blurRadius: 15.0,
                        ),
                      ]),
                ),
              ))
        ]));
  }
}
