import 'package:card_swiper/card_swiper.dart';
import 'package:find_ture/login/login_page.dart';
import 'package:find_ture/mine/mine_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../login/globe.dart';
import '../topic/topic_page.dart';
import '../topic_post/topic_post_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final pageItems = ["最新", "年龄", "身高", "学历", "收入"];
  final marqueeItems = [
    "最新最新最新最新最新最新最新",
    "年龄年龄年龄年龄年龄年龄年龄年龄",
    "身高年龄年龄",
    "学历",
    "收入"
  ];

  var pageIndex = 0;

  void _post() {
    Navigator.push(context, CupertinoModalPopupRoute(builder: (context) {
      return const TopicPostPage();
    }));
  }

  _onChangeFilter(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: const Text("找对"),
            centerTitle: true,
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
                  if (Global.share.isLogin) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MinePage()));
                    return;
                  }

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
              ),
            ],
            expandedHeight: MediaQuery.of(context).padding.bottom +
                kToolbarHeight +
                500 +
                32,
            floating: true,
            pinned: true,
            snap: true,
            elevation: 0,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 1,
              background: Stack(
                children: [
                  Image.asset(
                    "images/首页背景@3x.png",
                    fit: BoxFit.fill,
                    height: 300,
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: kToolbarHeight,
                      ),
                      SizedBox(
                        height: 180,
                        child: Stack(
                          children: [
                            Swiper(
                              containerHeight: 40,
                              autoplay: true,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  // color: Colors.pink,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12),
                                    ),
                                  ),
                                  margin: const EdgeInsets.all(10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.network(
                                      "https://wallpapercave.com/wp/8k9KHcn.jpg",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                );
                              },
                              itemCount: 3,
                              pagination: const SwiperPagination(
                                builder: DotSwiperPaginationBuilder(
                                    size: 5,
                                    space: 5,
                                    activeSize: 8,
                                    color: Colors.pink,
                                    activeColor: Colors.white),
                              ),
                              // control: SwiperControl(),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // color: Colors.white,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(height: 12),
                            Container(
                              height: 30,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              decoration: const BoxDecoration(
                                color: Color(0xFFFCE4EC),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "images/首页通知@3x.png",
                                    width: 20,
                                    height: 20,
                                  ),
                                  Expanded(
                                      child: Swiper(
                                    autoplay: true,
                                    itemHeight: 30,
                                    containerHeight: 30,
                                    scrollDirection: Axis.vertical,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Container(
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.only(left: 12),
                                        child: Text(marqueeItems[index]),
                                      );
                                    },
                                    itemCount: marqueeItems.length,
                                    // control: SwiperControl(),
                                  ))
                                ],
                              ),
                            ),
                            Container(height: 12),
                            Container(
                              color: Colors.white,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return TopicPage();
                                      }));
                                    },
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "images/首页话题@3x.png",
                                          width: 44,
                                          height: 44,
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        const Text(
                                          '话题',
                                          style: TextStyle(color: Colors.pink),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "images/首页喜讯@3x.png",
                                          width: 44,
                                          height: 44,
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        const Text(
                                          '喜讯',
                                          style: TextStyle(color: Colors.pink),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "images/首页红包@3x.png",
                                          width: 44,
                                          height: 44,
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        const Text(
                                          '红包',
                                          style: TextStyle(color: Colors.pink),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "images/首页邀请@3x.png",
                                          width: 44,
                                          height: 44,
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        const Text(
                                          '邀请',
                                          style: TextStyle(color: Colors.pink),
                                        ),
                                      ],
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "images/首页消息@3x.png",
                                          width: 44,
                                          height: 44,
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        const Text(
                                          '消息',
                                          style: TextStyle(color: Colors.pink),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              padding: const EdgeInsets.only(top: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      const Text("0次"),
                                      TextButton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          foregroundColor: Colors.pink,
                                          splashFactory: NoSplash.splashFactory,
                                        ),
                                        child: const Text("找对啦"),
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          foregroundColor: Colors.pink,
                                          backgroundColor:
                                              Colors.pink.withOpacity(0.1),
                                          elevation: 0,
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          shadowColor: Colors.transparent,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                          ),
                                        ),
                                        child: const Text("入住0天"),
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      const Text("0元"),
                                      TextButton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          foregroundColor: Colors.pink,
                                          splashFactory: NoSplash.splashFactory,
                                        ),
                                        child: const Text("领红包"),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("0人"),
                                      TextButton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          foregroundColor: Colors.pink,
                                          splashFactory: NoSplash.splashFactory,
                                        ),
                                        child: const Text("沟通"),
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          foregroundColor: Colors.pink,
                                          backgroundColor:
                                              Colors.pink.withOpacity(0.1),
                                          elevation: 0,
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          shadowColor: Colors.transparent,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                          ),
                                        ),
                                        child: const Text("2030-09-10到期"),
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      const Text("0人"),
                                      TextButton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          foregroundColor: Colors.pink,
                                          splashFactory: NoSplash.splashFactory,
                                        ),
                                        child: const Text("邀请"),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("0次"),
                                      TextButton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          foregroundColor: Colors.pink,
                                          splashFactory: NoSplash.splashFactory,
                                        ),
                                        child: const Text("被配对"),
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          foregroundColor: Colors.pink,
                                          backgroundColor:
                                              Colors.pink.withOpacity(0.1),
                                          elevation: 0,
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          shadowColor: Colors.transparent,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                          ),
                                        ),
                                        child: const Text("找对中"),
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      const Text("0元"),
                                      TextButton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          foregroundColor: Colors.pink,
                                          splashFactory: NoSplash.splashFactory,
                                        ),
                                        child: const Text("发红包"),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 12,
                            )
                          ],
                        ),
                      ),
                      // ),
                    ],
                  )
                ],
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(62),
              child: Column(
                children: [
                  Container(
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, -2),
                          blurRadius: 2,
                          blurStyle: BlurStyle.normal,
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(12),
                      ),
                    ),
                  ),
                  Container(
                      color: Colors.white,
                      height: 44,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(
                            left: 12, right: 12, bottom: 12),
                        itemCount: pageItems.length,
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 12,
                          );
                        },
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Container(
                                color: Colors.white,
                                child: ElevatedButton(
                                  onPressed: () => _onChangeFilter(index),
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: index == pageIndex
                                        ? Colors.white
                                        : Colors.grey,
                                    disabledBackgroundColor: Colors.transparent,
                                    backgroundColor: index == pageIndex
                                        ? Colors.pink.withOpacity(0.4)
                                        : Colors.transparent,
                                    elevation: 0,
                                    splashFactory: NoSplash.splashFactory,
                                    shadowColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                  ),
                                  child: Text(pageItems[index]),
                                ),
                              ),
                            ],
                          );
                        },
                      ))
                ],
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 120.0,
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 90,
                      color: Colors.white,
                      margin: const EdgeInsets.only(
                          left: 12, right: 12, top: 12, bottom: 12),
                      child: Row(
                        children: [
                          AspectRatio(
                            aspectRatio: 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                "https://via.placeholder.com/100x100",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "昵称",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "女 22岁｜175cm｜50KG",
                                    style: TextStyle(
                                      color: Colors.pink,
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                "山东人",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              const Text(
                                "小凡元",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.orange.withOpacity(0.3),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(12),
                                  ),
                                  border: Border.all(color: Colors.orange),
                                ),
                                child: const Text(
                                  "  未婚  ",
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              const Text(
                                "统招本科",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              const Text(
                                "3-5K",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.black12.withOpacity(0.04),
                      height: 3,
                    )
                  ],
                ),
              ),
              childCount: 30,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: _post,
        tooltip: 'Increment',
        child: Image.asset("images/征婚交友@3x.png"),
        // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ), //
    );
  }
}
