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
                        'Selamat Datang,',
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
                              // Get User PicturePath
                              (context.read<UserCubit>().state as UserLoaded)
                                  .user
                                  .picturePath),
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
              child: BlocBuilder<FoodCubit, FoodState>(
                  builder: (_, state) => (state is FoodLoaded)
                      ? ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              children: state.foods
                                  .map(
                                    (food) => Padding(
                                      padding: EdgeInsets.only(
                                          left: (food == mockFoods.first)
                                              ? defaultMargin
                                              : 0,
                                          right: defaultMargin),
                                      child: GestureDetector(
                                        onTap: () {
                                          Get.to(
                                            FoodDetailPage(
                                              // Passing Food Data Ke Food Detail Page
                                              transaction: Transaction(
                                                  food: food,
                                                  user: (context
                                                          .read<UserCubit>()
                                                          .state as UserLoaded)
                                                      .user),
                                              onBackButtonPressed: () {
                                                Get.back();
                                              },
                                            ),
                                          );
                                        },
                                        child: FoodCard(
                                          food: food,
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ],
                        )
                      : Center(child: loadingIndicator)),
            ),
            // TABBED LIST OF FOOD
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  CustomTabBar(
                    titles: ['Masakan baru', 'Populer', 'Rekomendasi'],
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
                  BlocBuilder<FoodCubit, FoodState>(
                    builder: (_, state) {
                      if (state is FoodLoaded) {
                        List<Food> foods = state.foods
                            .where((element) =>
                                element.types.contains((selectedIndex == 0)
                                    ? FoodTypes.new_food
                                    : (selectedIndex == 1)
                                        ? FoodTypes.popular
                                        : FoodTypes.recomended))
                            .toList();
                        return Column(
                          children: foods
                              .map(
                                (element) => Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      defaultMargin, 0, defaultMargin, 16),
                                  child: FoodListItem(
                                    food: element,
                                    itemWidth: listItemWidth,
                                  ),
                                ),
                              )
                              .toList(),
                        );
                      } else {
                        return Center(
                          child: loadingIndicator,
                        );
                      }
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
