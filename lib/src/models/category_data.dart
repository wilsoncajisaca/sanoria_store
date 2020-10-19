import 'package:flutter/material.dart';

class CategoryData {
  final String title;
  final String icon;
  final bool isSelected;

  const CategoryData({
    this.isSelected,
    @required this.title,
    @required this.icon,
  });
}

const categoryList = [
  CategoryData(
    title: 'Todos',
    icon: "/category/vegetables.png",
    isSelected: false,
  ),
  CategoryData(
    title: 'Hojas',
    icon: "/category/hojas.png",
    isSelected: false,
  ),
  CategoryData(
    title: 'Tuberculos',
    icon: "/category/potatos.png",
    isSelected: false,
  ),
  CategoryData(
    title: 'Hierbas',
    icon: "/category/hierbas.png",
    isSelected: false,
  ),
];
