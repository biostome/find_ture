import 'package:flutter/material.dart';

import 'normal_input_page.dart';

class CertificatePage extends StatefulWidget {
  const CertificatePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CertificatePage();
  }
}

class _CertificatePage extends State<CertificatePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Cell(
          title: "证件类型",
          detailText: "请选择证件类型",
          onTap: () {},
        ),
        Divider(),
        Cell(
          title: "姓名",
          detailText: "请填写身份证姓名",
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NormalInputPage(
                title: const Text("姓名"),
                hintText: "请输入姓名",
                onPressed: () {
                  Navigator.pop(context);
                },
                onChanged: (value) {
                  debugPrint(value);
                },
              );
            })).then((value) {
              debugPrint(value);
            });
          },
        ),
        const Divider(),
        Cell(
          title: "身份证号",
          detailText: "请填写身份证号码",
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NormalInputPage(
                title: const Text("身份证号"),
                hintText: "请填写身份证号码",
                onPressed: () {
                  Navigator.pop(context);
                },
                onChanged: (value) {
                  debugPrint(value);
                },
              );
            })).then((value) {
              debugPrint(value);
            });
          },
        ),
        const ListTile(
          title: Text('请上传身份证照片'),
        ),
        SizedBox(
          height: 130,
          child: GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.only(top: 0, left: 12, right: 12),
            crossAxisCount: 2,
            mainAxisSpacing: 0,
            crossAxisSpacing: 6,
            childAspectRatio: 1 / 0.7,
            children: [
              Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/身份证@3x.png"),
                  ),
                ),
                child: Image.asset("images/相机@3x.png"),
              ),
              Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/身份证背面@3x.png"),
                  ),
                ),
                child: Image.asset("images/相机@3x.png"),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Cell extends StatelessWidget {
  final String title;
  final String detailText;
  final GestureTapCallback? onTap;

  const Cell({
    Key? key,
    required this.title,
    required this.detailText,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: const TextStyle(fontSize: 14)),
      trailing: SizedBox(
        width: 250,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(detailText, style: const TextStyle(fontSize: 14)),
            const SizedBox(width: 10),
            const Icon(Icons.arrow_forward_ios, size: 18),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
