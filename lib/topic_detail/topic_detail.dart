import 'package:flutter/material.dart';

class TopicDetail extends StatefulWidget {
  const TopicDetail({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TopicDetail();
  }
}

class _TopicDetail extends State<TopicDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("话题详情"),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(12),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              children: [
                const Text(
                  "案例解析",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22),
                ),
                AuthorBar(
                  avatar: Image.asset("images/首页默认头像@3x.png"),
                  author: Text("文章作者"),
                  date: Text("2023-01-11"),
                ),
                const Divider(),
                const Text(
                    """已经准备摆烂了，穷人伤不起。过年至今，真的休息的时间少之又少，行业好像是压抑太久，突然迎来一阵爆发一样，每个人都忙得手忙脚乱，问题是，老板收入有了，可一切该发的，一直压着不发，就是一个说法，三年来亏的太多，现在补不回来。乍一听，还挺有道理，仔细想想，就是在放屁。现在所有人都蠢蠢欲动，想要辞职的人，远远不止我一个，就说我这个部门，再过一两个月，我估计得走最少一半的人。另外的一个部门，现在已经跑得差不多了，我也是这几天才后知后觉，发现突然有很多人从年前到现在，都没有见过了，想想，应该都是已经跑路了才对。果不其然，今天老总又在盆友圈贴招聘信息了。不着急，有得你招的，天天嫌这个嫌那个，还跟我说什么到时候宁愿多贴些钱，招些新人换换血，想法不错，但是有点天真。有些事情，药自己动过手才有体会，有些岗位，并没有想象中那么容易招人，尤其是一些需要体力的岗位。且看吧。"""),
                const SizedBox(
                  height: 20,
                ),
                const CommentTileHeader(
                  left: Text(
                    "全部评论",
                    style: TextStyle(fontSize: 18),
                  ),
                  right: Text(
                    "共10条",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Expanded(
                  child: Column(
                    children: [
                      CommentTile(
                        avatar: Image.asset("images/首页默认头像@3x.png"),
                        author: const Text("包小兔"),
                        content: const Text(
                            "阿道夫🤔3二大饭店阿道夫🤔3二大饭店阿道夫🤔3二大饭店阿道夫🤔3二大饭店阿道夫🤔3二大饭店"),
                        time: const Text("1h"),
                        onReply: () {},
                        onEdit: () {},
                      ),
                      const Divider(indent: 40),
                      Container(
                        margin: const EdgeInsets.only(left: 40),
                        child: CommentTile(
                          avatar: Image.asset("images/首页默认头像@3x.png"),
                          author: const Text("包小兔"),
                          content: const Text("在西佩服带个在西佩服带个在西佩服带个在西佩服带个"),
                          time: const Text("1h"),
                          onReply: () {},
                          onEdit: () {},
                        ),
                      ),
                      const Divider(indent: 40),
                      Container(
                        margin: const EdgeInsets.only(left: 40),
                        child: CommentTile(
                          avatar: Image.asset("images/首页默认头像@3x.png"),
                          author: const Text("包小兔"),
                          content: const Text("在西佩服带个在西佩服带个在西佩服带个在西佩服带个"),
                          time: const Text("1h"),
                          onReply: () {},
                          onEdit: () {},
                        ),
                      ),
                      const Divider(indent: 0),
                      CommentTile(
                        avatar: Image.asset("images/首页默认头像@3x.png"),
                        author: const Text("包小兔"),
                        content: const Text(
                            "阿道夫🤔3二大饭店阿道夫🤔3二大饭店阿道夫🤔3二大饭店阿道夫🤔3二大饭店阿道夫🤔3二大饭店"),
                        time: const Text("1h"),
                        onReply: () {},
                        onEdit: () {},
                      ),
                      const Divider(indent: 40),
                      Container(
                        margin: const EdgeInsets.only(left: 40),
                        child: CommentTile(
                          avatar: Image.asset("images/首页默认头像@3x.png"),
                          author: const Text("包小兔"),
                          content: const Text("在西佩服带个在西佩服带个在西佩服带个在西佩服带个"),
                          time: const Text("1h"),
                          onReply: () {},
                          onEdit: () {},
                        ),
                      ),
                      const Divider(indent: 0),
                    ],
                  ),
                )
              ],
            ),
          ),
          SafeArea(
            child: Container(
              color: Colors.white,
              height: 60,
              alignment: Alignment.topCenter,
              child: const CommentInputBar(),
            ),
          )
        ],
      ),
    );
  }
}

class CommentInputBar extends StatelessWidget {
  const CommentInputBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 6, right: 6),
      child: const TextField(
        decoration: InputDecoration(
          isDense: true,
          hintText: 'Say something here...',
          filled: true,
          fillColor: Colors.black12,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
          ),
          suffixIcon: Icon(
            Icons.send,
            color: Colors.black54,
          ),
        ),
        keyboardType: TextInputType.text,
      ),
    );
  }
}

class CommentTileHeader extends StatelessWidget {
  final Text left;
  final Text right;

  const CommentTileHeader({
    Key? key,
    required this.left,
    required this.right,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        left,
        const Spacer(),
        right,
      ],
    );
  }
}

class AuthorBar extends StatelessWidget {
  final Image avatar;
  final Text author;
  final Text date;

  const AuthorBar({
    Key? key,
    required this.avatar,
    required this.author,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              ClipRRect(
                child: avatar,
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  author,
                  date,
                ],
              )
            ],
          ),
        ),
        const Tag(
            text: Text(
          "  原创  ",
          style: TextStyle(
            color: Colors.pink,
          ),
        ))
      ],
    );
  }
}

class Tag extends StatelessWidget {
  final Text text;

  const Tag({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.pink.withOpacity(0.3),
        borderRadius: BorderRadius.circular(4),
      ),
      child: text,
    );
  }
}

class CommentTile extends StatelessWidget {
  final Image avatar;
  final Text author;
  final Text content;
  final Text time;
  final GestureTapCallback? onReply;
  final GestureTapCallback? onEdit;

  const CommentTile({
    super.key,
    required this.avatar,
    required this.author,
    required this.content,
    required this.time,
    required this.onReply,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          child: SizedBox(
            width: 22,
            height: 22,
            child: avatar,
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  author,
                  const Spacer(),
                  time,
                ],
              ),
              content,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: onReply,
                    child: const Text(
                      "回复",
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  InkWell(
                    onTap: onEdit,
                    child: const Text(
                      "编辑",
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
