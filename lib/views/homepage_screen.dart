import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:weather_app/consts/images.dart';
import 'package:weather_app/controllers/main_controller.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MainController mainController = Get.put(MainController());
    var date = DateFormat("yMMMMd").format(DateTime.now());
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.appBarTheme.backgroundColor,
        title: date.text.color(theme.iconTheme.color).make(),
        actions: [
          Obx(
            () => IconButton(
              onPressed: () {
                mainController.changeTheme();
              },
              icon: Icon(mainController.isDark.value
                  ? Icons.light_mode_outlined
                  : Icons.dark_mode_outlined),
              color: theme.iconTheme.color,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined),
            color: theme.iconTheme.color,
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Kathmandu"
                  .text
                  .bold
                  .size(30)
                  .letterSpacing(3)
                  .color(theme.iconTheme.color)
                  .make(),
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
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "30\u00B0 ",
                          style: TextStyle(
                            color: theme.iconTheme.color,
                            fontSize: 30,
                          ),
                        ),
                        TextSpan(
                          text: "Sunny",
                          style: TextStyle(
                            color: theme.iconTheme.color,
                            letterSpacing: 2,
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
                    icon: Icon(
                      Icons.expand_less_outlined,
                      color: theme.iconTheme.color,
                    ),
                    label: "14\u00B0 ".text.color(theme.iconTheme.color).make(),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.expand_more_outlined,
                      color: theme.iconTheme.color,
                    ),
                    label: "20\u00B0 ".text.color(theme.iconTheme.color).make(),
                  ),
                ],
              ),
              10.heightBox,
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
                      10.heightBox,
                      values[index].text.gray400.make()
                    ],
                  );
                }),
              ),
              10.heightBox,
              const Divider(
                color: Vx.gray700,
              ),
              10.heightBox,
              SizedBox(
                height: 160,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 5),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xff00b4d8),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          "${index + 1} AM".text.gray200.make(),
                          Image.asset("assets/weather/09n.png"),
                          "38\u00B0".text.white.make(),
                        ],
                      ),
                    );
                  },
                ),
              ),
              10.heightBox,
              const Divider(
                color: Vx.gray700,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Next 7 Days"
                      .text
                      .semiBold
                      .size(16)
                      .color(theme.iconTheme.color)
                      .make(),
                  TextButton(
                    onPressed: () {},
                    child: const Text("View All"),
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 7,
                itemBuilder: (context, index) {
                  var day = DateFormat("EEEE").format(
                    DateTime.now().add(
                      Duration(days: index),
                    ),
                  );
                  return Card(
                    color: theme.cardColor,
                    elevation: 1,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: day.text.semiBold
                                  .color(theme.iconTheme.color)
                                  .make()),
                          Expanded(
                            child: TextButton.icon(
                              onPressed: () {},
                              icon: Image.asset(
                                "assets/weather/50n.png",
                                width: 40,
                                height: 40,
                              ),
                              label: "20\u00B0 "
                                  .text
                                  .color(theme.iconTheme.color)
                                  .make(),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "38\u00B0",
                                    style: TextStyle(
                                      color: theme.iconTheme.color,
                                      fontSize: 16,
                                    )),
                                TextSpan(
                                  text: "26\u00B0",
                                  style: TextStyle(
                                    color: theme.iconTheme.color,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
