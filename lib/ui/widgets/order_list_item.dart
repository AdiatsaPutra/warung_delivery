part of 'widgets.dart';

class OrderListItem extends StatelessWidget {
  final Transaction transaction;
  final double itemWidth;

  OrderListItem({this.transaction, this.itemWidth});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          margin: EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
                image: NetworkImage(transaction.food.picturePath),
                fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          width: itemWidth - 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transaction.food.name,
                style: blackFontStyleMedium,
                maxLines: 1,
                overflow: TextOverflow.clip,
              ),
              Text(
                '${transaction.quantity} item(s) .' +
                    NumberFormat.currency(
                            symbol: 'Rp,', decimalDigits: 0, locale: 'id-ID')
                        .format(transaction.total),
                style: greyFontStyle.copyWith(fontSize: 13),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              convertDateTime(transaction.datetime),
              style: greyFontStyle.copyWith(fontSize: 12),
            ),
            (transaction.status == TransactionStatus.canceled)
                ? Text(
                    'Dibatalkan',
                    style: blackFontStyleRegular.copyWith(
                        fontSize: 13, color: Colors.pink),
                  )
                : (transaction.status == TransactionStatus.pending)
                    ? Text(
                        'Menunggu',
                        style: blackFontStyleRegular.copyWith(fontSize: 13),
                      )
                    : (transaction.status == TransactionStatus.on_delivery)
                        ? Text(
                            'Dikirim',
                            style: blackFontStyleRegular.copyWith(fontSize: 13),
                          )
                        : SizedBox()
          ],
        )
      ],
    );
  }

  String convertDateTime(DateTime dateTime) {
    String month;

    switch (dateTime.month) {
      case 1:
        month = 'Januari';
        break;
      case 2:
        month = 'February';
        break;
      case 3:
        month = 'Maret';
        break;
      case 4:
        month = 'April';
        break;
      case 5:
        month = 'Mei';
        break;
      case 6:
        month = 'Juni';
        break;
      case 7:
        month = 'Juli';
        break;
      case 8:
        month = 'Agustus';
        break;
      case 9:
        month = 'September';
        break;
      case 10:
        month = 'Oktober';
        break;
      case 11:
        month = 'November';
        break;
      default:
        month = 'Desember';
    }
    return '${dateTime.day} ' + month + ', ${dateTime.hour}:${dateTime.minute}';
  }
}
