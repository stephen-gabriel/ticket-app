import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(height: 40),
          Text("Tickets", style: AppStyles.headLineStyle1),
          SizedBox(height: 20),
          AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 16),
            child: TicketView(ticket: ticketList[0], isColor: true),
          ),
          SizedBox(height: 1),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 20,
            ),
            color: AppStyles.ticketColor,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      isColor: true,
                      alignment: CrossAxisAlignment.start,
                      topText: "Flutter DB",
                      bottomText: "Passenger",
                    ),
                    AppColumnTextLayout(
                      isColor: true,
                      alignment: CrossAxisAlignment.end,
                      topText: "5221 36869",
                      bottomText: "passport",
                    ),
                  ],
                ),
                SizedBox(height: 20),
                AppLayoutBuilderWidget(
                  randomDivider: 15,
                  width: 5,
                  isColor: false,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      isColor: true,
                      alignment: CrossAxisAlignment.start,
                      topText: "2465 658494046865",
                      bottomText: "Number of E-ticket",
                    ),
                    AppColumnTextLayout(
                      isColor: true,
                      alignment: CrossAxisAlignment.end,
                      topText: "B46859",
                      bottomText: "Booking code",
                    ),
                  ],
                ),
                SizedBox(height: 20),
                AppLayoutBuilderWidget(
                  randomDivider: 15,
                  width: 5,
                  isColor: false,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(AppMedia.visaCard, scale: 11),
                            Text(
                              " *** 2462",
                              style: AppStyles.headLineStyle3,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Payment method",
                          style: AppStyles.headLineStyle4,
                        ),
                      ],
                    ),
                    AppColumnTextLayout(
                      isColor: true,
                      alignment: CrossAxisAlignment.end,
                      topText: "\$249.99",
                      bottomText: "price",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
