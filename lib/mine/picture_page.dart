import 'package:flutter/material.dart';

class PicturePage extends StatefulWidget {
  const PicturePage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PicturePage();
  }
}

class _PicturePage extends State<PicturePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 250,
              color: Colors.transparent,
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                    flex: 70,
                    child: Container(
                      color: Colors.transparent,
                      child: const PictureShower(
                        text: "我的封面",
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    flex: 30,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Expanded(
                          child: PictureShower(
                            text: "我的画展",
                          ),
                        ),
                        SizedBox(height: 12),
                        Expanded(
                          child: PictureShower(
                            text: "我素颜",
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 12,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 100,
              color: Colors.transparent,
              child: Flex(
                direction: Axis.horizontal,
                children: const [
                  Expanded(
                    flex: 1,
                    child: PictureShower(
                      text: "我的生活视频",
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    flex: 1,
                    child: PictureShower(
                      text: "我的素颜",
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    flex: 1,
                    child: PictureShower(
                      text: "我的头像",
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PictureShower extends StatelessWidget {
  final String text;
  final Image? image;

  final VoidCallback? onPressed;

  const PictureShower({
    Key? key,
    required this.text,
    this.image,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        if (image == null)
          Container(
            // color: Colors.pink,
            decoration: BoxDecoration(
                color: Colors.pink.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12)),
            alignment: Alignment.center,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
          ),
        // Image.network(
        //   "https://nwzimg.wezhan.cn/contents/sitefiles2030/10154897/images/12365746.png",
        //   fit: BoxFit.fill,
        //   height: 300,
        //   width: double.infinity,
        // ),
        if (image == null)
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shadowColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                minimumSize: const Size(44, 44),
                maximumSize: const Size(44, 44),
                fixedSize: const Size(44, 44),
                padding: EdgeInsets.zero,
                splashFactory: NoSplash.splashFactory,
                disabledBackgroundColor: Colors.transparent,
                disabledForegroundColor: Colors.transparent,
                foregroundColor: Colors.transparent,
                // alignment: Alignment.centerRight,
              ),
              child: Image.asset(
                "images/添加照片@3x.png",
                width: 22,
                height: 22,
              ),
            ),
          )
      ],
    );
  }
}
