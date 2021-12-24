import 'package:flutter/material.dart';
import 'package:session8/constants.dart';

import 'package:session8/model/listprogress.dart';
import 'package:session8/route/path.dart';

class Progress extends StatefulWidget {
  static String path = progress;
  const Progress({Key? key}) : super(key: key);

  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset(
              pathImage + "bgt.png",
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 30),
              width: 141,
              height: 6,
              decoration: BoxDecoration(
                color: black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          Positioned.fill(
            top: 15,
            bottom: 90,
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 29, vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        text(
                          "Progress",
                          black,
                          FontWeight.w600,
                          20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ClipOval(
                                  child: Container(
                                    width: 26,
                                    height: 26,
                                    color: const Color(0xff1FB877),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                text(
                                  "Taken",
                                  black,
                                  FontWeight.w600,
                                  14,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                ClipOval(
                                  child: Container(
                                    width: 26,
                                    height: 26,
                                    color: Colors.red,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                text(
                                  "Missed",
                                  black,
                                  FontWeight.w600,
                                  14,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        controller: ScrollController(),
                        scrollDirection: Axis.vertical,
                        itemCount: itemprogress.length,
                        itemBuilder: (BuildContext context, int index) {
                          final item = itemprogress[index];
                          return InkWell(
                            onTap: () {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, home, (route) => false);
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 5,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color(0xff6AE0D9)
                                          .withOpacity(0.49),
                                    ),
                                    child: Center(
                                      child: text(
                                        item.text,
                                        black,
                                        FontWeight.w600,
                                        13,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      color: const Color(0xff1FB877),
                                      height: 13,
                                      child: FractionallySizedBox(
                                        widthFactor: item.percent / 100,
                                        child: Container(
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  text(
                    "Your progress has been shared to your invitees.",
                    black,
                    FontWeight.w600,
                    14,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
