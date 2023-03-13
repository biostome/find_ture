import 'package:find_ture/mine/certificate_page.dart';
import 'package:find_ture/mine/picture_page.dart';
import 'package:find_ture/mine/profile_page.dart';
import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  const MinePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MinePage();
  }
}

class _MinePage extends State<MinePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List tabs = ["资料", "影像", "证件"];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              title: const Text("我的", style: TextStyle(color: Colors.white)),
              centerTitle: true,
              expandedHeight: 280.0,
              floating: true,
              pinned: true,
              snap: true,
              elevation: 0,
              stretch: true,
              shadowColor: Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 1,
                background: Stack(
                  children: [
                    Image.network(
                      "https://nwzimg.wezhan.cn/contents/sitefiles2030/10154897/images/12365746.png",
                      fit: BoxFit.fill,
                      height: 300,
                      width: double.infinity,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(height: 40),
                        Avatar(),
                        SizedBox(height: 12),
                        Star(),
                      ],
                    ),
                  ],
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(100),
                child: ProfileTabBar(tabController: _tabController, tabs: tabs),
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            ProfilePage(),
            PicturePage(),
            CertificatePage(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Image.asset("images/勾@3x.png"),
        // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ), //
    );
  }
}

class ProfileTabBar extends StatelessWidget {
  const ProfileTabBar({
    Key? key,
    required TabController tabController,
    required this.tabs,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;
  final List tabs;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          // width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          child: TabBar(
            // isScrollable: true,
            labelColor: Colors.black87,
            indicatorPadding: EdgeInsets.only(top: 3),
            overlayColor: MaterialStateProperty.all(Colors.white),
            controller: _tabController,
            indicatorColor: Colors.pink,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: tabs
                .map((e) => Tab(
                      text: e,
                    ))
                .toList(),
          ),
        )
      ],
    );
  }
}

class Star extends StatelessWidget {
  const Star({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("images/实名@3x.png", width: 22, height: 22),
        const SizedBox(width: 4),
        Image.asset("images/生活照@3x.png", width: 22, height: 22),
        const SizedBox(width: 4),
        Image.asset("images/房子@3x.png", width: 22, height: 22),
        const SizedBox(width: 4),
        Image.asset("images/汽车@3x.png", width: 22, height: 22),
        const SizedBox(width: 4),
        Container(
          decoration: BoxDecoration(
            color: Colors.pink.withOpacity(0.3),
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Text(" 323天 ",
              style: TextStyle(color: Colors.pink, fontSize: 12)),
        )
      ],
    );
  }
}

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 80,
      height: 80,
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(80),
            child: Image.network(
              "https://nwzimg.wezhan.cn/contents/sitefiles2030/10154897/images/12365746.png",
              fit: BoxFit.fill,
              height: 400,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shadowColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              minimumSize: const Size(22, 22),
              maximumSize: const Size(22, 22),
              fixedSize: const Size(22, 22),
              padding: EdgeInsets.zero,
              splashFactory: NoSplash.splashFactory,
              disabledBackgroundColor: Colors.transparent,
              disabledForegroundColor: Colors.transparent,
              foregroundColor: Colors.transparent,
              // alignment: Alignment.centerRight,
            ),
            child: Image.asset(
              "images/相机@3x.png",
              width: 22,
              height: 22,
            ),
          ),
        ],
      ),
    );
  }
}
