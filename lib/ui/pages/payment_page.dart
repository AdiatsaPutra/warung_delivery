part of 'pages.dart';

class PaymentPage extends StatelessWidget {
  final Transaction transaction;

  PaymentPage({this.transaction});
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Pembayaran',
      subtitle: 'Berikut pembayaran anda',
      onbackButtonPressed: () {},
      backColor: 'FAFAFC'.toColor(),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: defaultMargin),
            padding:
                EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 16),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Item Pembelian',
                  style: blackFontStyleRegular,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          margin: EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: NetworkImage(transaction.food.picturePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(transaction.food.name,
                                style: blackFontStyleMedium,
                                maxLines: 1,
                                overflow: TextOverflow.clip),
                            Text(
                              NumberFormat.currency(
                                      locale: 'id ID',
                                      symbol: 'Rp. ',
                                      decimalDigits: 0)
                                  .format(transaction.food.price),
                              style: greyFontStyle.copyWith(fontSize: 13),
                            ),
                          ],
                        )
                      ],
                    ),
                    Text(
                      '${transaction.quantity} item(s)',
                      style: greyFontStyle.copyWith(fontSize: 13),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
