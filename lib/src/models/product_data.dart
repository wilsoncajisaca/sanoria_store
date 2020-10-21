import 'package:flutter/material.dart';
import 'package:sanoria_store/src/models/category_data.dart';

class ProductData {
  final String imageUrl;
  final String name;
  final String description;
  final String weight;
  final double priceBefore;
  final double price;
  final bool isFavorite;
  final int category;

  const ProductData({
    this.imageUrl,
    @required this.name,
    this.description,
    this.weight,
    this.priceBefore,
    @required this.price,
    @required this.isFavorite,
    this.category,
  });

  ProductData copyWith({
    String imageUrl,
    String name,
    String description,
    String weight,
    double priceBefore,
    double price,
    bool isFavorite,
    CategoryData category,
  }) {
    return ProductData(
      imageUrl: imageUrl ?? this.imageUrl,
      description: description ?? this.description,
      weight: weight ?? this.weight,
      priceBefore: priceBefore ?? this.priceBefore,
      name: name ?? this.name,
      price: price ?? this.price,
      isFavorite: isFavorite ?? this.isFavorite,
      category: category ?? this.category,
    );
  }
}

const productFavoriteList = [
  ProductData(
    imageUrl: 'zanahoria.png',
    weight: '1Lb',
    name: 'Zanahoria',
    priceBefore: 2.75,
    price: 2.50,
    isFavorite: true,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
  ),
  ProductData(
    imageUrl: 'col.png',
    weight: '1Lb',
    name: 'Col',
    priceBefore: 1.60,
    price: 1.50,
    isFavorite: true,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
  ),
  ProductData(
    imageUrl: 'acelga.png',
    weight: '1Lb',
    name: 'Acelga',
    priceBefore: 1.55,
    price: 1.50,
    isFavorite: true,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
  ),
  ProductData(
    imageUrl: 'arveja.png',
    weight: '1Lb',
    name: 'Arveja',
    priceBefore: 0.90,
    price: 0.75,
    isFavorite: true,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
  ),
  ProductData(
    imageUrl: 'brocoli.png',
    weight: '1Lb',
    name: 'Brocoli',
    priceBefore: 0.75,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
    price: 0.50,
    isFavorite: true,
  ),
];

const productOfferList = [
  ProductData(
    imageUrl: 'acelga.png',
    weight: '1Lb',
    name: 'Acelga',
    priceBefore: 1.55,
    price: 1.50,
    isFavorite: true,
  ),
  ProductData(
    imageUrl: 'arveja.png',
    weight: '1Lb',
    name: 'Arveja',
    priceBefore: 0.90,
    price: 0.75,
    isFavorite: true,
  ),
  ProductData(
    imageUrl: 'brocoli.png',
    weight: '1Lb',
    name: 'Brocoli',
    priceBefore: 0.75,
    price: 0.50,
    isFavorite: false,
  ),
  ProductData(
    imageUrl: 'remolacha.png',
    weight: '1Lb',
    name: 'Remolacha',
    priceBefore: 1.80,
    price: 1.50,
    isFavorite: false,
  ),
  ProductData(
    imageUrl: 'lechuga.png',
    weight: '1Lb',
    name: 'Lechuga',
    priceBefore: 0.65,
    price: 0.50,
    isFavorite: false,
  ),
];

const productMoreSaleList = [
  ProductData(
    imageUrl: 'col.png',
    weight: '1Lb',
    name: 'Col',
    priceBefore: 1.60,
    price: 1.50,
    isFavorite: false,
  ),
  ProductData(
    imageUrl: 'acelga.png',
    weight: '1Lb',
    name: 'Acelga',
    priceBefore: 1.55,
    price: 1.50,
    isFavorite: true,
  ),
  ProductData(
    imageUrl: 'remolacha.png',
    weight: '1Lb',
    name: 'Remolacha',
    priceBefore: 1.80,
    price: 1.50,
    isFavorite: false,
  ),
  ProductData(
    imageUrl: 'rabano.png',
    weight: '1Lb',
    name: 'Rabano',
    priceBefore: 1.10,
    price: 1.00,
    isFavorite: true,
  ),
  ProductData(
    imageUrl: 'lechuga.png',
    weight: '1Lb',
    name: 'Lechuga',
    priceBefore: 0.65,
    price: 0.50,
    isFavorite: false,
  ),
];

const productList = [
  ProductData(
    category: 1,
    imageUrl: 'col.png',
    weight: '1Lb',
    name: 'Col',
    priceBefore: 1.60,
    price: 1.50,
    isFavorite: true,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
  ),
  ProductData(
    category: 1,
    imageUrl: 'acelga.png',
    weight: '1Lb',
    name: 'Acelga',
    priceBefore: 1.55,
    price: 1.50,
    isFavorite: true,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
  ),
  ProductData(
    category: 1,
    imageUrl: 'arveja.png',
    weight: '1Lb',
    name: 'Arveja',
    priceBefore: 0.90,
    price: 0.75,
    isFavorite: true,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
  ),
  ProductData(
    category: 2,
    imageUrl: 'brocoli.png',
    weight: '1Lb',
    name: 'Brocoli',
    priceBefore: 0.75,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
    price: 0.50,
    isFavorite: true,
  ),
  ProductData(
    category: 3,
    imageUrl: 'cebollin.png',
    weight: '1Lb',
    name: 'Cebollin',
    priceBefore: 2.75,
    price: 2.50,
    isFavorite: false,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
  ),
  ProductData(
    category: 3,
    imageUrl: 'cebolla_colorada.png',
    weight: '1Lb',
    name: 'Cebolla Colorada',
    priceBefore: 2.75,
    price: 2.50,
    isFavorite: false,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
  ),
  ProductData(
    category: 2,
    imageUrl: 'cilantro.png',
    weight: '1Lb',
    name: 'Cilantro',
    priceBefore: 2.75,
    price: 2.50,
    isFavorite: false,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
  ),
  ProductData(
    category: 2,
    imageUrl: 'col_morada.png',
    weight: '1Lb',
    name: 'Col Morada',
    priceBefore: 2.75,
    price: 2.50,
    isFavorite: true,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
  ),
  ProductData(
    category: 3,
    imageUrl: 'colifrol.png',
    weight: '1Lb',
    name: 'Colifrol',
    priceBefore: 2.75,
    price: 2.50,
    isFavorite: false,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
  ),
  ProductData(
    category: 3,
    imageUrl: 'espinaca.png',
    weight: '1Lb',
    name: 'Espinaca',
    priceBefore: 2.75,
    price: 2.50,
    isFavorite: true,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
  ),
  ProductData(
    category: 2,
    imageUrl: 'frejol_maduro.png',
    weight: '1Lb',
    name: 'Frejol Maduro',
    priceBefore: 2.75,
    price: 2.50,
    isFavorite: false,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
  ),
  ProductData(
    category: 3,
    imageUrl: 'frejol_tierno.png',
    weight: '1Lb',
    name: 'Frejol tierno',
    priceBefore: 2.75,
    price: 2.50,
    isFavorite: true,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
  ),
  ProductData(
    category: 3,
    imageUrl: 'fresas.png',
    weight: '1Lb',
    name: 'Fresas',
    priceBefore: 2.75,
    price: 2.50,
    isFavorite: false,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
  ),
  ProductData(
    category: 3,
    imageUrl: 'espinaca_hoja.png',
    weight: '1Lb',
    name: 'Espinaca en Hoja',
    priceBefore: 2.75,
    price: 2.50,
    isFavorite: true,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
  ),
  ProductData(
    category: 2,
    imageUrl: 'lechugaHoja.png',
    weight: '1Lb',
    name: 'Lechuga Hoja',
    priceBefore: 2.75,
    price: 2.50,
    isFavorite: true,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
  ),
  ProductData(
    category: 2,
    imageUrl: 'papa.png',
    weight: '1Lb',
    name: 'Papa',
    priceBefore: 2.75,
    price: 2.50,
    isFavorite: false,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
  ),
  ProductData(
    category: 2,
    imageUrl: 'zanahoria.png',
    weight: '1Lb',
    name: 'Zanahoria',
    priceBefore: 2.75,
    price: 2.50,
    isFavorite: true,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
  ),
  ProductData(
    category: 3,
    imageUrl: 'perejil.png',
    weight: '1Lb',
    name: 'Perejil',
    priceBefore: 2.75,
    price: 2.50,
    isFavorite: false,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
  ),
  ProductData(
    category: 1,
    imageUrl: 'tomate_rinion.png',
    weight: '1Lb',
    name: 'Tomate Rinion',
    priceBefore: 2.75,
    price: 2.50,
    isFavorite: true,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
  ),
  ProductData(
    category: 2,
    imageUrl: 'yuca.png',
    weight: '1Lb',
    name: 'Yuca',
    priceBefore: 2.75,
    price: 2.50,
    isFavorite: false,
    description:
        "None of that prepared him for the arena, the crowd, the tense hush, the towering puppets of light from a service hatch framed a heap of discarded fiber",
  ),
];
