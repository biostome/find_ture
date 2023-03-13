import 'package:find_ture/findback_password/find_password.dart';
import 'package:find_ture/login/globe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../register/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginPageStatus();
  }
}

class _LoginPageStatus extends State<LoginPage> {
  _toRegisterPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RegisterPage()),
    );
  }

  _toFindPassword() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const FindPasswordPage()),
    );
  }

  _loginAction() {
    final value = Global.share.isLogin = true;
    if (value) {
      Navigator.pop(context, value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.pinkAccent,
                  Colors.white,
                ],
              ),
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 100),
                child: const Text(
                  "遇见缘分",
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 400,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: const EdgeInsets.only(left: 40, right: 40, top: 30),
                    padding: const EdgeInsets.all(24),
                  ),
                  Container(
                    width: double.infinity,
                    height: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: const EdgeInsets.only(left: 24, right: 24, top: 10),
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "登录",
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding:
                                  const EdgeInsets.only(left: 12, right: 12),
                              child: Image.asset(
                                "images/用户@3x.png",
                                width: 12,
                                height: 12,
                              ),
                            ),
                            hintText: "请输入手机号",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide.none,
                            ),
                            // prefix: Container(width: 12),
                            // contentPadding: const EdgeInsets.symmetric(
                            //   vertical: 10.0,
                            //   horizontal: 10,
                            // ),
                            fillColor: Colors.grey[200],
                            filled: true,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding:
                                  const EdgeInsets.only(left: 12, right: 12),
                              child: Image.asset(
                                "images/锁@3x.png",
                                width: 12,
                                height: 12,
                              ),
                            ),

                            hintText: "请输入密码",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide.none,
                            ),
                            // prefix: Container(width: 12),
                            // contentPadding: const EdgeInsets.symmetric(
                            //   vertical: 10.0,
                            //   horizontal: 10,
                            // ),
                            fillColor: Colors.grey[200],
                            filled: true,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: _toRegisterPage,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                disabledBackgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                foregroundColor: Colors.pink,
                              ),
                              child: const Text("立即注册"),
                            ),
                            ElevatedButton(
                              onPressed: _toFindPassword,
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  elevation: 0,
                                  disabledBackgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  foregroundColor: Colors.grey),
                              child: const Text("忘记密码"),
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        SizedBox(
                          height: 44,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: _loginAction,
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.pink,
                              foregroundColor: Colors.white,
                              textStyle: const TextStyle(fontSize: 18),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(60))),
                            ),
                            child: const Text("登  录"),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
      extendBodyBehindAppBar: true,
    );
  }
}
