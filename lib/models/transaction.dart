part of 'models.dart';

enum TransactionStatus { delivered, on_delivery, pending, canceled }

class Transaction extends Equatable {
  final int id;
  final Food food;
  final int quantity;
  final int total;
  final DateTime datetime;
  final TransactionStatus status;
  final User user;

  Transaction(
      {@required this.id,
      @required this.food,
      @required this.quantity,
      @required this.total,
      @required this.datetime,
      @required this.status,
      @required this.user});

  Transaction copyWith(
      {int id,
      Food food,
      int quantity,
      int total,
      DateTime datetime,
      TransactionStatus status,
      User user}) {
    return Transaction(
        id: id ?? this.id,
        food: food ?? this.food,
        quantity: quantity ?? this.quantity,
        total: total ?? this.total,
        datetime: datetime ?? this.datetime,
        status: status ?? this.status,
        user: user ?? this.user);
  }

  @override
  List<Object> get props => [id, food, quantity, total, datetime, status, user];
}

List<Transaction> mockTransaction = [
  Transaction(
      id: 1,
      food: mockFoods[1],
      quantity: 3,
      total: (mockFoods[3].price * 7 + 1.1).round() + 50000,
      datetime: DateTime.now(),
      status: TransactionStatus.canceled,
      user: mockUser),
  Transaction(
      id: 2,
      food: mockFoods[2],
      quantity: 3,
      total: (mockFoods[3].price * 7 + 1.1).round() + 50000,
      datetime: DateTime.now(),
      status: TransactionStatus.delivered,
      user: mockUser),
  Transaction(
      id: 3,
      food: mockFoods[1],
      quantity: 3,
      total: (mockFoods[3].price * 7 + 1.1).round() + 50000,
      datetime: DateTime.now(),
      status: TransactionStatus.delivered,
      user: mockUser),
];
