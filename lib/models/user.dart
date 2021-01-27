part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User(
      {@required this.id,
      @required this.name,
      @required this.email,
      @required this.address,
      @required this.houseNumber,
      @required this.phoneNumber,
      @required this.city,
      @required this.picturePath});
  @override
  List<Object> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = User(
    id: 1,
    name: 'Pieck',
    email: 'hudvgusdhsghdshd',
    address: 'hshsdiwhhwuidhuhw',
    houseNumber: '613e',
    phoneNumber: '7364784679',
    city: 'sgiashiashaijsh',
    picturePath:
        'https://static.wikia.nocookie.net/shingekinokyojin/images/6/66/Annie_Leonhart_%28Anime%29_character_image.png/revision/latest?cb=20171207050656');
