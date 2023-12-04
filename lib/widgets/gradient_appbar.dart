import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomGradientAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final LinearGradient gradient;

  const CustomGradientAppBar({
    super.key,
    required this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: gradient,
      ),
      child: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/svgs/menu_icon.svg',
            height: 20,
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Quran',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/svgs/search_icon.svg',
              height: 20,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
