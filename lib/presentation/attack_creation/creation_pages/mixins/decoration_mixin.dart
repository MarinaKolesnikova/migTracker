import 'package:diplom_proj/resources/resources.dart';
import 'package:flutter/material.dart';

mixin PickerMixin<T extends StatefulWidget> on State<T> {
  BoxDecoration decoration() {
    return BoxDecoration(
      color: LightColors.mainItemsColor,
      borderRadius: BorderRadius.circular(20.0),
    );
  }

  late final TextEditingController searchController;
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();

    searchController = TextEditingController();
    scrollController = ScrollController();
  }

  @override
  void dispose() {
    searchController.dispose();
    scrollController.dispose();
    super.dispose();
  }
}
