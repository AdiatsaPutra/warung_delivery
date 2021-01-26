part of 'pages.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
        FoodCard()
        // TABBED LIST OF FOOD
      ],
    );
  }
}
