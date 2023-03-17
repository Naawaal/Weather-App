import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:weather_app/consts/images.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var date = DateFormat("yMMMMd").format(DateTime.now());
    return Scaffold(
      appBar: AppBar(
        title: date.text.gray700.make(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.light_mode_outlined),
            color: Vx.gray600,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined),
            color: Vx.gray600,
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "Kathmandu".text.bold.size(30).letterSpacing(3).make(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/weather/01d.png",
                  width: 60,
                ),
                const SizedBox(
                  width: 10,
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "30\u00B0 ",
                        style: TextStyle(
                          color: Vx.gray900,
                          fontSize: 30,
                        ),
                      ),
                      TextSpan(
                        text: "Sunny",
                        style: TextStyle(
                          color: Vx.gray900,
                          letterSpacing: 3,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.expand_less_outlined,
                    color: Vx.gray400,
                  ),
                  label: "14\u00B0 ".text.make(),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.expand_more_outlined,
                    color: Vx.gray400,
                  ),
                  label: "20\u00B0 ".text.make(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(3, (index) {
                var values = [
                  "70%",
                  "40%",
                  "3.5 km/h",
                ];
                var iconList = [
                  clouds,
                  humidity,
                  windspeed,
                ];
                return Column(
                  children: [
                    Image.asset(
                      iconList[index],
                      width: 50,
                    )
                        .box
                        .gray200
                        .padding(const EdgeInsets.all(8))
                        .roundedSM
                        .make(),
                    const SizedBox(
                      height: 5,
                    ),
                    values[index].text.make()
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
