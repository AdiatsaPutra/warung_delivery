part of 'pages.dart';

class OrderHistoryPage extends StatefulWidget {
  @override
  _OrderHistoryPageState createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int selectedIndex = 0;

  // Get In Progress Transactions
  List<Transaction> inProgressTransaction = mockTransaction
      .where((element) =>
          // Get On Delivery Transactions
          element.status == TransactionStatus.on_delivery ||
          // Get Pending Transactions
          element.status == TransactionStatus.pending)
      .toList();
  // Get Past Transactions
  List<Transaction> pastTransaction = mockTransaction
      .where((element) =>
          // Get Delivered Transactions
          element.status == TransactionStatus.delivered ||
          // Get Cancelled Transactions
          element.status == TransactionStatus.canceled)
      .toList();
  @override
  Widget build(BuildContext context) {
    // Check If There Are No Transactions
    if (inProgressTransaction.length == 0 && pastTransaction.length == 0) {
      return IllustrationPage(
        title: 'Lapar',
        subtitle: 'Belum ada pesanan',
        picturePath: 'assets/delivery.png',
        buttonTitle1: 'Pesan Makanan',
        buttonTap1: () {},
      );
    } else {
      return ListView(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pesanan Anda',
                      style: blackFontStyleBig,
                    ),
                    Text(
                      'Tunggu pesanan terbaik anda',
                      style: greyFontStyle.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              // Body
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    CustomTabBar(
                      titles: ['Sedang Diproses', 'Sudah Diproses'],
                      selectedIndex: selectedIndex,
                      onTap: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                children: (selectedIndex == 0
                        ? inProgressTransaction
                        : pastTransaction)
                    .map(
                      (e) => Text(
                        e.food.name,
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ],
      );
    }
  }
}
