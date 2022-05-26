import 'package:flutter/material.dart';
import 'package:page_view_indicators/page_view_indicators.dart';

mixin PagedViewMixin {
  final currentPageNotifier = ValueNotifier<int>(0);
  Widget buildPageView(
    List<Widget> widgetList,
    PageController? controller,
  ) {
    print('here $widgetList');
    return PageView.builder(
        itemCount: widgetList.length,
        controller: controller,
        itemBuilder: (BuildContext context, int index) {
          return widgetList[index];
        },
        onPageChanged: (int index) {
          currentPageNotifier.value = index;
        });
  }

  Widget buildCircleIndicator(int length) {
    return Positioned(
      left: 0.0,
      right: 0.0,
      bottom: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CirclePageIndicator(
          itemCount: length,
          currentPageNotifier: currentPageNotifier,
        ),
      ),
    );
  }
}
