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
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      ingredients: 'Cuteness',
      price: 576576995,
      rate: 3.5),
  Food(
      id: 1,
      picturePath:
          'https://static.wikia.nocookie.net/shingekinokyojin/images/6/66/Annie_Leonhart_%28Anime%29_character_image.png/revision/latest?cb=20171207050656',
      name: 'Annie',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      ingredients: 'Cuteness',
      price: 576576995,
      rate: 3.5),
  Food(
      id: 1,
      picturePath:
          'https://static.wikia.nocookie.net/shingekinokyojin/images/6/66/Annie_Leonhart_%28Anime%29_character_image.png/revision/latest?cb=20171207050656',
      name: 'Annie',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      ingredients: 'Cuteness',
      price: 576576995,
      rate: 3.5),
  Food(
      id: 1,
      picturePath:
          'https://static.wikia.nocookie.net/shingekinokyojin/images/6/66/Annie_Leonhart_%28Anime%29_character_image.png/revision/latest?cb=20171207050656',
      name: 'Annie',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      ingredients: 'Cuteness',
      price: 576576995,
      rate: 3.5),
  Food(
      id: 1,
      picturePath:
          'https://static.wikia.nocookie.net/shingekinokyojin/images/6/66/Annie_Leonhart_%28Anime%29_character_image.png/revision/latest?cb=20171207050656',
      name: 'Annie',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      ingredients: 'Cuteness',
      price: 576576995,
      rate: 3.5),
  Food(
      id: 1,
      picturePath:
          'https://static.wikia.nocookie.net/shingekinokyojin/images/6/66/Annie_Leonhart_%28Anime%29_character_image.png/revision/latest?cb=20171207050656',
      name: 'Annie',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      ingredients: 'Cuteness',
      price: 576576995,
      rate: 3.5),
  Food(
      id: 1,
      picturePath:
          'https://static.wikia.nocookie.net/shingekinokyojin/images/6/66/Annie_Leonhart_%28Anime%29_character_image.png/revision/latest?cb=20171207050656',
      name: 'Annie',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      ingredients: 'Cuteness',
      price: 576576995,
      rate: 3.5),
  Food(
      id: 1,
      picturePath:
          'https://static.wikia.nocookie.net/shingekinokyojin/images/6/66/Annie_Leonhart_%28Anime%29_character_image.png/revision/latest?cb=20171207050656',
      name: 'Annie',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
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
