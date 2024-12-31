import 'package:eurogoods/constants/text_font_style.dart';
import 'package:eurogoods/features/history/widgets/history_widget.dart';
import 'package:eurogoods/features/history/widgets/ongoing_widget.dart';
import 'package:eurogoods/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
            controller: tabController,
            indicatorColor: AppColors.c01779D,
            labelColor: AppColors.c01779D,
            unselectedLabelColor: AppColors.c17242B.withOpacity(0.6),
            tabs: <Widget>[
              Tab(
                child: Text("Ongoing",
                    style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    )),
              ),
              Tab(
                child: Text('History',
                    style: TextFontStyle.textStyle24c848585PoppinsW400.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    )),
              ),
              Tab(
                text: (''),
              ),
            ]),
      ),
      body: TabBarView(
        children: <Widget>[OngoingWidget(), HistoryWidget()],
        controller: tabController,
      ),
    );
  }
}
