import 'package:find_ture/topic/post_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'great_button.dart';
import 'love_button.dart';

class TopicListTile extends StatefulWidget {
  const TopicListTile({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TopicListTile();
  }
}

class _TopicListTile extends State<TopicListTile> {
  var images = [
    "https://upload.jianshu.io/images/js-qrc.png",
    "https://upload.jianshu.io/images/js-qrc.png",
    "https://upload.jianshu.io/images/js-qrc.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              "阿斯顿飞机可怜的23423阿斯顿飞机可怜的23423阿斯顿飞机可怜的23423阿斯顿飞机可怜的23423",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          if (images.length == 3)
            Row(children: [
              Image.network(
                images[0],
                height: 100,
              ),
              SizedBox(
                width: 6,
              ),
              Image.network(
                images[1],
                height: 100,
              ),
              SizedBox(
                width: 6,
              ),
              Image.network(
                images[2],
                height: 100,
              ),
            ]),
          if (images.length == 2)
            Row(
              children: [
                Image.network(
                  images[0],
                  height: 100,
                ),
                SizedBox(
                  width: 6,
                ),
                Image.network(
                  images[1],
                  height: 100,

                ),
              ],
            ),
          SizedBox(
            height: 6,
          ),
          Row(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.network(
                      "https://via.placeholder.com/20x20",
                      width: 20,
                      height: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    "匿名  1小时钱",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Spacer(),
              LoveButton(
                "0",
                selected: false,
                onPressed: () {},
              ),
              PostButton(
                "0",
                onPressed: () {},
              ),
              GreatButton(
                "0",
                onPressed: () {},
                selected: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
