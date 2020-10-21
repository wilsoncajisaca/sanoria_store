import 'package:flutter/material.dart';

class CategoryData {
  final int id;
  final String title;
  final String icon;
  final bool isSelected;

  const CategoryData({
    @required this.id,
    this.isSelected,
    @required this.title,
    @required this.icon,
  });
}

const categoryList = [
  CategoryData(
    id: 1,
    title: 'Todos',
    icon: "/category/vegetables.png",
    isSelected: false,
  ),
  CategoryData(
    id: 2,
    title: 'Hojas',
    icon: "/category/hojas.png",
    isSelected: false,
  ),
  CategoryData(
    id: 3,
    title: 'Tuberculos',
    icon: "/category/potatos.png",
    isSelected: false,
  ),
  CategoryData(
    id: 4,
    title: 'Hierbas',
    icon: "/category/hierbas.png",
    isSelected: false,
  ),
];
