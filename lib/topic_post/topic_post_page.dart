import 'package:flutter/material.dart';

class TopicPostPage extends StatefulWidget {
  const TopicPostPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TopicPostPage();
  }
}

class _TopicPostPage extends State<TopicPostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("话题"),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        color: Colors.white,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.black12,
                border: InputBorder.none,
                hintText: "请输入标题",
              ),
              cursorColor: Colors.pink,
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 300,
              color: Colors.black12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      border: InputBorder.none,
                      hintText: "请录入话题，不得少于200字，请遵纪守法，文明用语",
                    ),
                    maxLines: 500,
                    minLines: 1,
                    // maxLength: 5000,
                    cursorColor: Colors.pink,
                  ),
                  const Spacer(),
                  const Divider(),
                  Container(
                    height: 80,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: GridView.count(
                      crossAxisCount: 10,
                      children: [
                        IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              elevation: 0,
                              shadowColor: Colors.transparent,
                              backgroundColor: Colors.black12,
                              minimumSize: const Size(22, 22),
                              maximumSize: const Size(22, 22),
                              fixedSize: const Size(22, 22),
                            ),
                            icon: Image.asset("images/拍照@3x.png")),
                        IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              elevation: 0,
                              shadowColor: Colors.transparent,
                              backgroundColor: Colors.black12,
                              minimumSize: const Size(22, 22),
                              maximumSize: const Size(22, 22),
                              fixedSize: const Size(22, 22),
                            ),
                            icon: Image.asset("images/图片@3x.png")),
                        IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              elevation: 0,
                              shadowColor: Colors.transparent,
                              backgroundColor: Colors.black12,
                              minimumSize: const Size(22, 22),
                              maximumSize: const Size(22, 22),
                              fixedSize: const Size(22, 22),
                            ),
                            icon: Image.asset("images/视频@3x.png")),
                        IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              elevation: 0,
                              shadowColor: Colors.transparent,
                              backgroundColor: Colors.black12,
                              minimumSize: const Size(22, 22),
                              maximumSize: const Size(22, 22),
                              fixedSize: const Size(22, 22),
                            ),
                            icon: Image.asset("images/粗体.png")),
                        IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              elevation: 0,
                              shadowColor: Colors.transparent,
                              backgroundColor: Colors.black12,
                              minimumSize: const Size(22, 22),
                              maximumSize: const Size(22, 22),
                              fixedSize: const Size(22, 22),
                            ),
                            icon: Image.asset("images/斜体@3x.png")),
                        IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              elevation: 0,
                              shadowColor: Colors.transparent,
                              backgroundColor: Colors.black12,
                              minimumSize: const Size(22, 22),
                              maximumSize: const Size(22, 22),
                              fixedSize: const Size(22, 22),
                            ),
                            icon: Image.asset("images/字体@3x.png")),
                        IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              elevation: 0,
                              shadowColor: Colors.transparent,
                              backgroundColor: Colors.black12,
                              minimumSize: const Size(22, 22),
                              maximumSize: const Size(22, 22),
                              fixedSize: const Size(22, 22),
                            ),
                            icon: Image.asset("images/行间距@3x.png")),
                        IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              elevation: 0,
                              shadowColor: Colors.transparent,
                              backgroundColor: Colors.black12,
                              minimumSize: const Size(22, 22),
                              maximumSize: const Size(22, 22),
                              fixedSize: const Size(22, 22),
                            ),
                            icon: Image.asset("images/右缩进@3x.png")),
                        IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              elevation: 0,
                              shadowColor: Colors.transparent,
                              backgroundColor: Colors.black12,
                              minimumSize: const Size(22, 22),
                              maximumSize: const Size(22, 22),
                              fixedSize: const Size(22, 22),
                            ),
                            icon: Image.asset("images/左缩进@3x.png")),
                        IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              elevation: 0,
                              shadowColor: Colors.transparent,
                              backgroundColor: Colors.black12,
                              minimumSize: const Size(22, 22),
                              maximumSize: const Size(22, 22),
                              fixedSize: const Size(22, 22),
                            ),
                            icon: Image.asset("images/字号@3x.png")),
                        IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              elevation: 0,
                              shadowColor: Colors.transparent,
                              backgroundColor: Colors.black12,
                              minimumSize: const Size(22, 22),
                              maximumSize: const Size(22, 22),
                              fixedSize: const Size(22, 22),
                            ),
                            icon: Image.asset("images/字体颜色@3x.png")),
                        IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              elevation: 0,
                              shadowColor: Colors.transparent,
                              backgroundColor: Colors.black12,
                              minimumSize: const Size(22, 22),
                              maximumSize: const Size(22, 22),
                              fixedSize: const Size(22, 22),
                            ),
                            icon: Image.asset("images/背景颜色@3x.png")),
                        IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              elevation: 0,
                              shadowColor: Colors.transparent,
                              backgroundColor: Colors.black12,
                              minimumSize: const Size(22, 22),
                              maximumSize: const Size(22, 22),
                              fixedSize: const Size(22, 22),
                            ),
                            icon: Image.asset("images/左对齐@3x.png")),
                        IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              elevation: 0,
                              shadowColor: Colors.transparent,
                              backgroundColor: Colors.black12,
                              minimumSize: const Size(22, 22),
                              maximumSize: const Size(22, 22),
                              fixedSize: const Size(22, 22),
                            ),
                            icon: Image.asset("images/右对齐@3x.png")),
                        IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              elevation: 0,
                              shadowColor: Colors.transparent,
                              backgroundColor: Colors.black12,
                              minimumSize: const Size(22, 22),
                              maximumSize: const Size(22, 22),
                              fixedSize: const Size(22, 22),
                            ),
                            icon: Image.asset("images/middle-align@3x.png")),
                        IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              elevation: 0,
                              shadowColor: Colors.transparent,
                              backgroundColor: Colors.black12,
                              minimumSize: const Size(22, 22),
                              maximumSize: const Size(22, 22),
                              fixedSize: const Size(22, 22),
                            ),
                            icon: Image.asset("images/两端对齐@3x.png")),
                        IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              elevation: 0,
                              shadowColor: Colors.transparent,
                              backgroundColor: Colors.black12,
                              minimumSize: const Size(22, 22),
                              maximumSize: const Size(22, 22),
                              fixedSize: const Size(22, 22),
                            ),
                            icon: Image.asset("images/链接@3x.png")),
                        IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              elevation: 0,
                              shadowColor: Colors.transparent,
                              backgroundColor: Colors.black12,
                              minimumSize: const Size(22, 22),
                              maximumSize: const Size(22, 22),
                              fixedSize: const Size(22, 22),
                            ),
                            icon: Image.asset("images/表情@3x.png")),
                        IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              elevation: 0,
                              shadowColor: Colors.transparent,
                              backgroundColor: Colors.black12,
                              minimumSize: const Size(22, 22),
                              maximumSize: const Size(22, 22),
                              fixedSize: const Size(22, 22),
                            ),
                            icon: Image.asset("images/字体上标@3x.png")),
                        IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              elevation: 0,
                              shadowColor: Colors.transparent,
                              backgroundColor: Colors.black12,
                              minimumSize: const Size(22, 22),
                              maximumSize: const Size(22, 22),
                              fixedSize: const Size(22, 22),
                            ),
                            icon: Image.asset("images/字体下标@3x.png")),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // TextField(
            //   maxLines: 0,
            //   maxLength: 5000,
            // ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Image.asset("images/勾@3x.png"),
        // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
