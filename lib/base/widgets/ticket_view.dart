import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            // blue part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  //show departure and destination with icons first line
                  Row(
                    children: [
                      const TextStyleThird(text: "NYC"),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(
                                randomDivider: 6,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const BigDot(),
                      Expanded(child: Container()),
                      const TextStyleThird(text: "LDN"),
                    ],
                  ),
                  SizedBox(height: 3),
                  //show departure and destination names with time
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: const TextStyleFourth(
                          text: "New-York",
                        ),
                      ),
                      Expanded(child: Container()),
                      const TextStyleFourth(text: "8H 30M"),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: const TextStyleFourth(
                          text: "London",
                          align: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // circles and dots
            Container(
              color: AppStyles.ticketOrange,
              child: Row(
                children: [
                  BigCircle(isRight: false),
                  Expanded(
                    child: AppLayoutBuilderWidget(
                      randomDivider: 16,
                      width: 6,
                    ),
                  ),
                  BigCircle(isRight: true),
                ],
              ),
            ),
            // orange part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  //show departure and destination with icons first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        topText: "1 May",
                        bottomText: "DATE",
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextStyleThird(text: "1 May"),
                          SizedBox(height: 5),
                          TextStyleFourth(text: "DATE"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextStyleThird(text: "1 May"),
                          SizedBox(height: 5),
                          TextStyleFourth(text: "DATE"),
                        ],
                      ),
                      // Expanded(child: Container()),
                      // Text(
                      //   "08:00 AM",
                      //   style: AppStyles.headLineStyle3.copyWith(
                      //     color: Colors.white,
                      //   ),
                      // ),
                      // Expanded(child: Container()),
                      // Text(
                      //   "23",
                      //   style: AppStyles.headLineStyle3.copyWith(
                      //     color: Colors.white,
                      //   ),
                      // ),
                    ],
                  ),
                  SizedBox(height: 3),
                  //show departure and destination names with time
                  /*Row(
                    children: [
                      Text(
                        "Date",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Departure Time",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Number",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
