

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final String title;
  const CategoryChip({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Chip(
        label: Text(title),
        backgroundColor: Colors.grey.shade200,
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const FilterButton({required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onTap,
      icon: const Icon(Icons.tune, size: 16),
      label: Text(title),
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 12),
      ),
    );
  }
}
