

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usermanage_app/resources/app_colors.dart';

class ThemeTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool onSelected;

  const ThemeTile({
    required this.icon,
    required this.label,
    required this.onTap,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: onSelected ? AppColors.primaryColor : AppColors.textColor,),
      title: Text(label, style: TextStyle(color: onSelected ? AppColors.primaryColor : AppColors.textColor),),
      onTap: onTap,
      trailing: Icon(Icons.chevron_right, color: onSelected ? AppColors.primaryColor : AppColors.textColor,),
    );
  }
}

