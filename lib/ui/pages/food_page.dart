part of 'pages.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double listItemWidth = MediaQuery.of(context).size.width - defaultMargin;
    return ListView(
      children: [
        Column(
          children: [
            // HEADER
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              color: Colors.white,
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome,',
                        style: blackFontStyleBig,
                      ),
                      Text(
                        'Silakan Pilih Makanan Anda',
                        style: greyFontStyle.copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2020/10/03/3219359135.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
            // LIST OF FOOD
            Container(
              height: 258,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: mockFoods
                        .map(
                          (food) => Padding(
                            padding: EdgeInsets.only(
                                left: (food == mockFoods.first)
                                    ? defaultMargin
                                    : 0,
                                right: defaultMargin),
                            child: FoodCard(
                              food: food,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
            // TABBED LIST OF FOOD
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  CustomTabBar(
                    titles: ['Masakan Kuah', 'Gorengan', 'Minuman'],
                    selectedIndex: selectedIndex,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Builder(
                    builder: (_) {
                      List<Food> foods = (selectedIndex == 0)
                          ? mockFoods
                          : (selectedIndex == 1)
                              ? []
                              : [];
                      return Column(
                        children: foods
                            .map(
                              (e) => Padding(
                                padding: EdgeInsets.fromLTRB(
                                    defaultMargin, 0, defaultMargin, 16),
                                child: FoodListItem(
                                  food: e,
                                  itemWidth: listItemWidth,
                                ),
                              ),
                            )
                            .toList(),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ],
    );
  }
}
