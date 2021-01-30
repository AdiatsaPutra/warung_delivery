part of 'services.dart';

class TransactionService {
  // Get User's Transaction
  static Future<ApiReturnValue<List<Transaction>>> getTransaction() async {
    await Future.delayed(Duration(seconds: 3));

    return ApiReturnValue(
        value: mockTransaction, message: 'Berhasil Melakukan Transaksi');
  }

  // Handling User's Submit Transaction
  static Future<ApiReturnValue<Transaction>> submitTransaction(
      Transaction transaction) async {
    await Future.delayed(Duration(seconds: 3));

    return ApiReturnValue(
        value: transaction.copyWith(id: 123, status: TransactionStatus.pending),
        message: 'Transaksi Berhasil');
  }
}
