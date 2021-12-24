import 'package:flutter/material.dart';
import 'package:session8/constants.dart';
import 'package:session8/model/listContents.dart';
import 'package:session8/route/path.dart';

class contents extends StatefulWidget {
  static String path = content;
  const contents({Key? key}) : super(key: key);

  @override
  _contentsState createState() => _contentsState();
}

class _contentsState extends State<contents> {
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
          Positioned(
            top: 50,
            right: 30,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  text("LogOut", title, FontWeight.w600, 14),
                  const SizedBox(
                    width: 4,
                  ),
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: const Color(0xff5DB0A8),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Icon(
                      Icons.login_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            top: 110,
            bottom: 69,
            child: Center(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        controller: ScrollController(),
                        scrollDirection: Axis.vertical,
                        itemCount: itemContent.length,
                        itemBuilder: (BuildContext context, int index) {
                          final item = itemContent[index];
                          return ListTile(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 30),
                            onTap: () {
                              Navigator.pushNamed(context, progress);
                            },
                            leading: Image.asset(
                              pathImage + item.img,
                              width: 52,
                            ),
                            title: text(
                              item.title,
                              black,
                              FontWeight.w600,
                              16,
                            ),
                            subtitle: text(
                              item.subtitle,
                              black,
                              FontWeight.w400,
                              12,
                            ),
                          );
                        }),
                  ),
                  Image.asset(pathImage + "contents.png"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
