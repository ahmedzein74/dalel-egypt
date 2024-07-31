import 'package:dalel_egypt/core/utils/app_strings.dart';
import 'package:dalel_egypt/core/widget/custom_category_listview.dart';
import 'package:dalel_egypt/core/widget/custom_hedear_text.dart';
import 'package:flutter/cupertino.dart';

class HistoricalCharactersSection extends StatelessWidget {
  const HistoricalCharactersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHedearText(text: AppStrings.historicalCharacters),
        SizedBox(height: 20),
        CustomCategoryListView(),
        SizedBox(height: 30),
      ],
    );
  }
}
