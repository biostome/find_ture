import 'package:flutter/material.dart';

import '../topic_detail/topic_detail.dart';
import 'topic_list_tile.dart';

class HotPage extends StatefulWidget {
  const HotPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HotPage();
  }
}

class _HotPage extends State<HotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemBuilder: (context, index) {
          return InkWell(
            child: const TopicListTile(),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const TopicDetail();
              }));
            },
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: 10,
      ),
    );
  }
}
