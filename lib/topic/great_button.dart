import 'package:flutter/material.dart';

class GreatButton extends StatefulWidget {
  final bool selected;
  final String data;
  final VoidCallback? onPressed;

  const GreatButton(
    this.data, {
    super.key,
    required this.selected,
    required this.onPressed,
  });

  @override
  State<StatefulWidget> createState() {
    return _GreatButton();
  }
}

class _GreatButton extends State<GreatButton> {
  bool selected = false;

  _onChangeSelect() {
    setState(() {
      selected = !selected;
      widget.onPressed?.call();
    });
  }

  @override
  void initState() {
    selected = widget.selected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _onChangeSelect,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.transparent,
        minimumSize: const Size(20, 40),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
        shadowColor: Colors.transparent,
      ),
      child: Row(
        children: [
          selected == false
              ? Image.asset(
                  "images/大拇指未点赞@3x.png",
                  width: 16,
                  height: 16,
                )
              : Image.asset(
                  "images/大拇指已点赞@3x.png",
                  width: 16,
                  height: 16,
                ),
          const SizedBox(
            width: 4,
          ),
          Text(
            widget.data,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
