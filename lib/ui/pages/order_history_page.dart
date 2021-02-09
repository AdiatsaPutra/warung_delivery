part of 'pages.dart';

class OrderHistoryPage extends StatefulWidget {
  @override
  _OrderHistoryPageState createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(
      builder: (_, state) {
        if (state is TransactionLoaded) {
          // Check If There Are No Transactions
          if (state.transactions.length == 0) {
            return IllustrationPage(
              title: 'Lapar',
              subtitle: 'Belum ada pesanan',
              picturePath: 'assets/delivery.png',
              buttonTitle1: 'Pesan Makanan',
              buttonTap1: () {},
            );
          } else {
            double listItemWidth =
                MediaQuery.of(context).size.width - 2 * defaultMargin;
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
                    Builder(
                      builder: (_) {
                        List<Transaction> transactions = (selectedIndex == 0)
                            ?
                            // Get In Progress Transactions
                            state.transactions
                                .where((element) =>
                                    // Get On Delivery Transactions
                                    element.status ==
                                        TransactionStatus.on_delivery ||
                                    // Get Pending Transactions
                                    element.status == TransactionStatus.pending)
                                .toList()
                            : state.transactions
                                .where((element) =>
                                    // Get Delivered Transactions
                                    element.status ==
                                        TransactionStatus.delivered ||
                                    // Get Cancelled Transactions
                                    element.status ==
                                        TransactionStatus.canceled)
                                .toList();
                        // Get Past Transactions
                        return Column(
                          children: transactions
                              .map(
                                (e) => Padding(
                                  padding: EdgeInsets.only(
                                      left: defaultMargin,
                                      right: defaultMargin,
                                      bottom: 16),
                                  child: OrderListItem(
                                    transaction: e,
                                    itemWidth: listItemWidth,
                                  ),
                                ),
                              )
                              .toList(),
                        );
                      },
                    )
                  ],
                ),
              ],
            );
          }
        } else {
          return Center(child: loadingIndicator);
        }
      },
    );
  }
}
