import 'package:flutter/material.dart';
import 'package:vava_app/started/widgets/carousel.dart';
import '../../../themes/app_colors.dart';

class StartedView extends StatefulWidget {
  const StartedView({super.key});

  @override
  State<StartedView> createState() => _StartedViewState();
}

class _StartedViewState extends State<StartedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        body: Column(
          children: const [
            CarrouselForm(),
          ],
        ));
  }
}
