import 'package:flutter/material.dart';

class PostButton extends StatefulWidget {
  final String data;
  final VoidCallback? onPressed;

  const PostButton(
    this.data, {
    super.key,
    required this.onPressed,
  });

  @override
  State<StatefulWidget> createState() {
    return _PostButton();
  }
}

class _PostButton extends State<PostButton> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.transparent,
        minimumSize: const Size(20, 40),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
        shadowColor: Colors.transparent,
      ),
      onPressed: widget.onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "images/评论@3x.png",
            width: 16,
            height: 16,
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            widget.data,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
