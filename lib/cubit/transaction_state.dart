part of 'transaction_cubit.dart';

abstract class TransactionState extends Equatable {
  const TransactionState();
}

class TransactionInitial extends TransactionState {
  @override
  List<Object> get props => [];
}

class TransactionLoaded extends TransactionState {
  final List<Transaction> transactions;
  TransactionLoaded({this.transactions});
  @override
  List<Object> get props => [transactions];
}

class FetchTransactionFailed extends TransactionState {
  final String message;
  FetchTransactionFailed({this.message});
  @override
  List<Object> get props => [message];
}
