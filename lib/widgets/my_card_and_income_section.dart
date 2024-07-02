import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/widgets/income.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';

class MyCardAndIncomeSection extends StatelessWidget {
  const MyCardAndIncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 24.0),
      child: Column(
        children: [
          MyCard(),
          SizedBox(
            height: 24,
          ),
          Income(),
        ],
      ),
    );
  }
}
