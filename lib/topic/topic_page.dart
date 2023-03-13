import 'package:flutter/material.dart';

import '../login/login_page.dart';
import 'hot_page.dart';

class TopicPage extends StatefulWidget {
  const TopicPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TopicPageState();
  }
}

class _TopicPageState extends State<TopicPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List tabs = [
    "我的",
    "热门",
    "情感",
    "生活",
    "社会",
    "爱好",
    "手链",
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          titleSpacing: 0,
          title: SizedBox(
            height: 36,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "请输入昵称",
                fillColor: Colors.white,
                filled: true,

                // isDense: true,
                prefixIcon: Container(
                  padding: const EdgeInsets.only(left: 6, right: 6),
                  child: Image.asset(
                    "images/搜索@3x.png",
                  ),
                ),
                prefixIconConstraints:
                    const BoxConstraints(maxHeight: 22, maxWidth: 44),
                contentPadding: const EdgeInsets.only(top: 5, bottom: 5),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24.0),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24.0),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ),
          ),

          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              child: Image.asset(
                "images/首页默认头像@3x.png",
                width: 25,
                height: 25,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LoginPage();
                }));
              },
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            controller: _tabController,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: tabs.map((e) => Tab(text: e)).toList(),
          ),
          // bottom: PreferredSize(
          //   preferredSize: const Size.fromHeight(kToolbarHeight),
          //   child: Align(
          //     alignment: Alignment.centerLeft,
          //     child: TabBar(
          //       isScrollable: true,
          //       controller: _tabController,
          //       indicatorColor: Colors.white,
          //       indicatorSize: TabBarIndicatorSize.label,
          //       tabs: tabs.map((e) => Tab(text: e)).toList(),
          //     ),
          //   ),
          // ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: tabs.map((e) {
            return HotPage();
          }).toList(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // 释放资源
    _tabController.dispose();
    super.dispose();
  }
}
