import 'package:flutter/material.dart';

class NormalInputPage extends StatelessWidget {
  final Text title;
  final String hintText;
  final VoidCallback? onPressed;
  final ValueChanged<String>? onChanged;

  const NormalInputPage({
    super.key,
    required this.title,
    required this.hintText,
    required this.onPressed,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          TextFormField(
            onChanged: onChanged,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black12),
                  borderRadius: BorderRadius.circular(12)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black12),
                  borderRadius: BorderRadius.circular(12)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.pink),
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              elevation: 0,
              shadowColor: Colors.transparent,
              minimumSize: const Size.fromHeight(44),
            ),
            child: const Text(
              "确定",
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
