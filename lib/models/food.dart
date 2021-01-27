part of 'models.dart';

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food(
      {@required this.id,
      @required this.picturePath,
      @required this.name,
      @required this.description,
      @required this.ingredients,
      @required this.price,
      @required this.rate});

  @override
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath:
          'https://static.wikia.nocookie.net/shingekinokyojin/images/6/66/Annie_Leonhart_%28Anime%29_character_image.png/revision/latest?cb=20171207050656',
      name: 'Annie',
      description: 'My Waifu',
      ingredients: 'Cuteness',
      price: 576576995,
      rate: 3.5),
  Food(
      id: 1,
      picturePath:
          'https://static.wikia.nocookie.net/shingekinokyojin/images/6/66/Annie_Leonhart_%28Anime%29_character_image.png/revision/latest?cb=20171207050656',
      name: 'Annie',
      description: 'My Waifu',
      ingredients: 'Cuteness',
      price: 576576995,
      rate: 3.5),
  Food(
      id: 1,
      picturePath:
          'https://static.wikia.nocookie.net/shingekinokyojin/images/6/66/Annie_Leonhart_%28Anime%29_character_image.png/revision/latest?cb=20171207050656',
      name: 'Annie',
      description: 'My Waifu',
      ingredients: 'Cuteness',
      price: 576576995,
      rate: 3.5),
  Food(
      id: 1,
      picturePath:
          'https://static.wikia.nocookie.net/shingekinokyojin/images/6/66/Annie_Leonhart_%28Anime%29_character_image.png/revision/latest?cb=20171207050656',
      name: 'Annie',
      description: 'My Waifu',
      ingredients: 'Cuteness',
      price: 576576995,
      rate: 3.5),
  Food(
      id: 1,
      picturePath:
          'https://static.wikia.nocookie.net/shingekinokyojin/images/6/66/Annie_Leonhart_%28Anime%29_character_image.png/revision/latest?cb=20171207050656',
      name: 'Annie',
      description: 'My Waifu',
      ingredients: 'Cuteness',
      price: 576576995,
      rate: 3.5),
  Food(
      id: 1,
      picturePath:
          'https://static.wikia.nocookie.net/shingekinokyojin/images/6/66/Annie_Leonhart_%28Anime%29_character_image.png/revision/latest?cb=20171207050656',
      name: 'Annie',
      description: 'My Waifu',
      ingredients: 'Cuteness',
      price: 576576995,
      rate: 3.5),
  Food(
      id: 1,
      picturePath:
          'https://static.wikia.nocookie.net/shingekinokyojin/images/6/66/Annie_Leonhart_%28Anime%29_character_image.png/revision/latest?cb=20171207050656',
      name: 'Annie',
      description: 'My Waifu',
      ingredients: 'Cuteness',
      price: 576576995,
      rate: 3.5),
  Food(
      id: 1,
      picturePath:
          'https://static.wikia.nocookie.net/shingekinokyojin/images/6/66/Annie_Leonhart_%28Anime%29_character_image.png/revision/latest?cb=20171207050656',
      name: 'Annie',
      description: 'My Waifu',
      ingredients: 'Cuteness',
      price: 576576995,
      rate: 3.5),
  Food(
      id: 1,
      picturePath:
          'https://static.wikia.nocookie.net/shingekinokyojin/images/6/66/Annie_Leonhart_%28Anime%29_character_image.png/revision/latest?cb=20171207050656',
      name: 'Annie',
      description: 'My Waifu',
      ingredients: 'Cuteness',
      price: 576576995,
      rate: 3.5),
  Food(
      id: 1,
      picturePath:
          'https://static.wikia.nocookie.net/shingekinokyojin/images/6/66/Annie_Leonhart_%28Anime%29_character_image.png/revision/latest?cb=20171207050656',
      name: 'Annie',
      description: 'My Waifu',
      ingredients: 'Cuteness',
      price: 576576995,
      rate: 3.5),
  Food(
      id: 1,
      picturePath:
          'https://static.wikia.nocookie.net/shingekinokyojin/images/6/66/Annie_Leonhart_%28Anime%29_character_image.png/revision/latest?cb=20171207050656',
      name: 'Annie',
      description: 'My Waifu',
      ingredients: 'Cuteness',
      price: 576576995,
      rate: 3.5),
];
