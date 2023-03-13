import 'package:flutter/material.dart';

class FindPasswordPage extends StatefulWidget {
  const FindPasswordPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FindPasswordPageStatus();
  }
}

class _FindPasswordPageStatus extends State<FindPasswordPage> {
  _clearNickname() {}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text("找回密码"),
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        margin: const EdgeInsets.all(24),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "请输入手机号",
                fillColor: Colors.white,
                filled: true,
                suffixIcon: ElevatedButton(
                  onPressed: _clearNickname,
                  style: ElevatedButton.styleFrom(
                      elevation: 0, backgroundColor: Colors.transparent),
                  child: Image.asset(
                    "images/叉号@3x.png",
                    width: 20,
                    height: 20,
                  ),
                ),
                suffixIconConstraints: const BoxConstraints(
                  minHeight: 20,
                  minWidth: 20,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(
                    color: Colors.pink,
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(
                    color: Colors.black12,
                    width: 1.0,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Colors.black12,
                    width: 1,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "请输入验证码",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(
                    color: Colors.pink,
                    width: 1.0,
                  ),
                ),
                suffixIcon: ElevatedButton(
                  onPressed: () {},
                  child: Text("获取验证码"),
                  style: ElevatedButton.styleFrom(
                      elevation: 0, backgroundColor: Colors.pink[500]),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(
                    color: Colors.black12,
                    width: 1.0,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Colors.black12,
                    width: 1,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "请输入密码",
                fillColor: Colors.white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(
                    color: Colors.pink,
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(
                    color: Colors.black12,
                    width: 1.0,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Colors.black12,
                    width: 1,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 48,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.pink,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 18),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                ),
                child: const Text("修改密码"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
