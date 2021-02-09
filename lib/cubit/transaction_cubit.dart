import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:warung_delivery/models/models.dart';
import 'package:warung_delivery/services/services.dart';

part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit() : super(TransactionInitial());

  // Get Transactions
  Future<void> getTransactions() async {
    ApiReturnValue<List<Transaction>> results =
        await TransactionService.getTransaction();

    if (results.value != null) {
      emit(TransactionLoaded(transactions: results.value));
    } else {
      emit(FetchTransactionFailed(message: results.message));
    }
  }

  // Submit Transaction
  Future<bool> submitTransaction(Transaction transaction) async {
    ApiReturnValue<Transaction> result =
        await TransactionService.submitTransaction(transaction);

    if (result.value != null) {
      emit(TransactionLoaded(
          transactions:
              (state as TransactionLoaded).transactions + [result.value]));
      return true;
    } else {
      return false;
    }
  }
}
