import 'package:find_ture/mine/normal_input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProfilePage();
  }
}

class _ProfilePage extends State<ProfilePage> {
  List<Widget> _cells = [];

  @override
  void initState() {
    super.initState();
    _cells = _createCells();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => _cells[index],
      separatorBuilder: (context, index) => const Divider(height: 1),
      itemCount: _cells.length,
    );
  }

  List<Widget> _createCells() {
    return [
      Cell(
        title: "真实姓名",
        detailText: "请输入",
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NormalInputPage(
              title: const Text("真实姓名"),
              hintText: "请输入真实姓名",
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
      Cell(
        title: "性别",
        detailText: "请选择",
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => SizedBox(
                    height: 300,
                    child: Column(
                      children: [
                        SizedBox(height: 8,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                foregroundColor: Colors.black87,
                                shadowColor: Colors.transparent,
                                padding: EdgeInsets.zero,
                              ),
                              child: const Text("取消"),
                            ),
                            const Spacer(),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                foregroundColor: Colors.black87,
                                shadowColor: Colors.transparent,
                                padding: EdgeInsets.zero,
                              ),
                              child: const Text(
                                "确定",
                                style: TextStyle(color: Colors.pink),
                              ),
                            ),
                          ],
                        ),
                        const Divider(),
                        Expanded(
                            child: CupertinoPicker(
                          itemExtent: 44,
                          onSelectedItemChanged: (int index) {},
                          children: const [
                            Center(
                              child: Text("男", textAlign: TextAlign.center),
                            ),
                            Center(
                              child: Text("女", textAlign: TextAlign.center),
                            ),
                          ],
                        ))
                      ],
                    ),
                  ));
        },
      ),
      Cell(
        title: "出生年月",
        detailText: "请选择",
        onTap: () {},
      ),
      Cell(
        title: "籍贯",
        detailText: "请输入",
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NormalInputPage(
              title: const Text("籍贯"),
              hintText: "请输入籍贯",
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
      Cell(
        title: "居住地",
        detailText: "请输入",
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NormalInputPage(
              title: const Text("居住地"),
              hintText: "请输入居住地",
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
      Cell(
        title: "手机号",
        detailText: "请输入",
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NormalInputPage(
              title: const Text("手机号"),
              hintText: "请输入手机号",
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
      Cell(
        title: "学历",
        detailText: "请输入",
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NormalInputPage(
              title: const Text("学历"),
              hintText: "请输入学历",
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
      Cell(
        title: "身高",
        detailText: "请输入",
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NormalInputPage(
              title: const Text("身高"),
              hintText: "请输入身高",
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
      Cell(
        title: "体重",
        detailText: "请输入",
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NormalInputPage(
              title: const Text("体重"),
              hintText: "请输入体重",
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
      Cell(
        title: "婚姻状况",
        detailText: "请输入",
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NormalInputPage(
              title: const Text("婚姻状况"),
              hintText: "请输入婚姻状况",
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
    ];
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
        width: 100,
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
