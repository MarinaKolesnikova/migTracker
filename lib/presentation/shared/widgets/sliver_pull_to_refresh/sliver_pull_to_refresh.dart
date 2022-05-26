import 'package:diplom_proj/presentation/shared/scroll_component/scroll_clean_behavior.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverPullToRefresh extends StatefulWidget {
  SliverPullToRefresh({
    required this.child,
    required this.childScrollController,
    required this.onRefresh,
    this.sliverAppBar,
    this.sliverPersistentHeader,
    this.backgroundRefreshColor,
    this.indicatorColor,
    this.bottomExtent = 60.0,
    this.needExtent = true,
    this.withShadow = false,
    this.noChildPadding = false,
    Key? key,
  }) : super(key: key);
  final Widget child;
  final ScrollController childScrollController;
  final Future<void> Function()? onRefresh;
  final double bottomExtent;
  final SliverAppBar? sliverAppBar;
  final SliverPersistentHeader? sliverPersistentHeader;
  final bool needExtent;
  final bool withShadow;
  final bool noChildPadding;

  final Color? backgroundRefreshColor;
  final Color? indicatorColor;

  @override
  State<SliverPullToRefresh> createState() => _SliverPullToRefreshState();
}

class _SliverPullToRefreshState extends State<SliverPullToRefresh> {
  late final ScrollController controller;
  late ScrollPhysics? physics;
  late final ScrollPhysics alwaysBouncingPhysics = AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics());

  @override
  void initState() {
    controller = widget.childScrollController;
    physics = alwaysBouncingPhysics;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      cacheExtent: 150.0,
      physics: physics,
      controller: controller,
      scrollBehavior: ScrollCleanBehavior(),
      slivers: [
        CupertinoSliverRefreshControl(
          refreshIndicatorExtent: 70.0,
          onRefresh: widget.onRefresh,
          builder: (
            context,
            refreshState,
            pulledExtent,
            refreshTriggerPullDistance,
            refreshIndicatorExtent,
          ) {
            return ClipRRect(
              child: Container(
                decoration: BoxDecoration(
                  color: widget.backgroundRefreshColor,
                  boxShadow: [
                    if (widget.withShadow)
                      const BoxShadow(
                        offset: Offset(0.0, -10.0),
                        blurRadius: 10.0,
                        spreadRadius: 10.0,
                      ),
                  ],
                ),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          },
        ),
        if (widget.sliverAppBar != null) widget.sliverAppBar!,
        if (widget.sliverPersistentHeader != null) widget.sliverPersistentHeader!,
        SliverPadding(
          padding: widget.noChildPadding ? const EdgeInsets.all(0.0) : const EdgeInsets.all(8.0),
          sliver: widget.child,
        ),
        if (widget.needExtent)
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(height: widget.bottomExtent + 20.0),
            ]),
          ),
      ],
    );
  }
}
