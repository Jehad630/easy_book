import 'package:easy_book/features/serach/presenation/views/view_model/cubit/serach_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          onPressed: () {
            final query = _controller.text.trim();
            if (query.isNotEmpty) {
              context.read<SerachCubit>().fetchSerachBooks(query);
            }
          },
        ),
        enabledBorder: buildBorder(Colors.grey),
        focusedBorder: buildBorder(Colors.black),
      ),
      onSubmitted: (value) {
        final query = value.trim();
        if (query.isNotEmpty) {
          context.read<SerachCubit>().fetchSerachBooks(query);
        }
      },
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
