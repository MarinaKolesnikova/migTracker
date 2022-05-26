import 'package:diplom_proj/presentation/calendar/calendar_screen.dart';
import 'package:diplom_proj/presentation/shared/widgets/skeleton_container.dart';
import 'package:flutter/material.dart';

mixin CalendarScreenMixin<T extends CalendarScreen> on State<T> {
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  Widget onLoading({required bool isLoaded, required Widget child}) {
    if (isLoaded) {
      return Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Column(
          children: [
            SkeletoneContainer(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: SkeletoneContainer(
                height: 320.0,
              ),
            ),
            getRoundedSkeleton,
            getRoundedSkeleton,
          ],
        ),
      );
    }

    return child;
  }

  Widget get getRoundedSkeleton {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: SkeletoneContainer(
        height: 50.0,
        borderRadius: BorderRadius.circular(40.0),
      ),
    );
  }

  Future<void> onRefresh() async {
    // context.read<CalendarBloc>().add(
    //       FetchBirthdaysHolidaysEvent(),
    //     );
    await Future.delayed(Duration(seconds: 2));
  }
}
