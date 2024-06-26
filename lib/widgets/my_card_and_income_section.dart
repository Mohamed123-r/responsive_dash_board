import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/widgets/income.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';

class MyCardAndIncomeSection extends StatelessWidget {
  const MyCardAndIncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyCard(),
        SizedBox(
          height: 24,
        ),
        Income(),
      ],
    );
  }
}
