import 'package:dalel_egypt/core/utils/app_strings.dart';
import 'package:dalel_egypt/core/widget/custom_hedear_text.dart';
import 'package:dalel_egypt/features/home/presentation/widget/historcal_periods.dart';
import 'package:dalel_egypt/core/widget/custom_category_listview.dart';
import 'package:dalel_egypt/features/home/presentation/widget/home_app_bar_widget.dart';
import 'package:dalel_egypt/features/home/presentation/widget/home_sections/app_bar_section.dart';
import 'package:dalel_egypt/features/home/presentation/widget/home_sections/historical_characters_section.dart';
import 'package:dalel_egypt/features/home/presentation/widget/home_sections/historical_periods_section.dart';
import 'package:dalel_egypt/features/home/presentation/widget/home_sections/historical_souvenirs_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: AppBarSection(),
            ),
            SliverToBoxAdapter(child: HistoricalPeriodsSection()),
            SliverToBoxAdapter(child: HistoricalCharactersSection()),
            SliverToBoxAdapter(child: HistoricalSouvenirsSection()),
          ],
        ),
      ),
    );
  }
}
