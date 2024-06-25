import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hintText: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hintText: 'Type customer Email',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item name',
                hintText: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                title: 'Item mount',
                hintText: 'USD',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              text:'Add more details' ,
            )),
            SizedBox(
              width: 24,
            ),
            Expanded(
                child: CustomButton(
                  color: Color(0xff4EB7F2),
              text:'Send Money' ,
            )),
          ],
        ),
      ],
    );
  }
}
