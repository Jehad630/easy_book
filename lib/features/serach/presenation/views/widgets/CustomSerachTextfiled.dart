import 'package:flutter/material.dart';

class CustomSerachTextfiled extends StatefulWidget {
  const CustomSerachTextfiled({super.key});

  @override
  State<CustomSerachTextfiled> createState() => _CustomSerachTextfiledState();
}

class _CustomSerachTextfiledState extends State<CustomSerachTextfiled> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        hintText: "Search category (e.g. programming, history...)",
        suffixIcon: IconButton(
          icon: const Icon(Icons.search_rounded, size: 20),
          onPressed: () {},
        ),
        enabledBorder: buildBorder(Colors.grey),
        focusedBorder: buildBorder(Colors.black),
      ),
      onSubmitted: (value) {},
    );
  }

  OutlineInputBorder buildBorder(Color color) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(color: color, width: 2),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
