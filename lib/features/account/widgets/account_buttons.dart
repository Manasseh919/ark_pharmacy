import 'package:ark_pharmacy/features/account/widgets/acc_buttons.dart';
import 'package:flutter/material.dart';

class TopButtons extends StatefulWidget {
  const TopButtons({super.key});

  @override
  State<TopButtons> createState() => _TopButtonsState();
}

class _TopButtonsState extends State<TopButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AccButtons(
              onTap: () {},
              text: "Your orders",
            ),
            AccButtons(
              onTap: () {},
              text: "Turn Seller",
            ),
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          children: [
            AccButtons(
              onTap: () {},
              text: "Log Out",
            ),
            AccButtons(
              onTap: () {},
              text: "Your Wish List",
            ),
          ],
        ),
      ],
    );
  }
}
