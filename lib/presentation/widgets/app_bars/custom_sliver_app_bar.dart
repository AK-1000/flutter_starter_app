import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    this.backAllowed = false,
    this.centerTitle = false,
    this.title = '',
    this.pinned = false,
    this.backgroundColor,
    this.backButtonColor,
    this.titleStyle,
    this.actions,
  });

  final String title;
  final bool centerTitle;
  final bool backAllowed;
  final bool pinned;
  final Color? backgroundColor;
  final Color? backButtonColor;
  final TextStyle? titleStyle;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: backgroundColor,
      pinned: pinned,
      leading: backAllowed
          ? IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: backButtonColor,
              ),
            )
          : const SizedBox.shrink(),
      actions: actions,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          title,
          style: titleStyle,
        ),
        centerTitle: centerTitle,
      ),
    );
  }
}
