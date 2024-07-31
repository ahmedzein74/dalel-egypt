import 'package:dalel_egypt/core/utils/app_strings.dart';
import 'package:dalel_egypt/core/widget/custom_hedear_text.dart';
import 'package:dalel_egypt/features/home/presentation/widget/historcal_periods.dart';
import 'package:flutter/cupertino.dart';

class HistoricalPeriodsSection extends StatelessWidget {
  const HistoricalPeriodsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHedearText(text: AppStrings.historicalPeriods),
        SizedBox(height: 16),
        HistoricalPeriods(),
        SizedBox(height: 20),
      ],
    );
  }
}
