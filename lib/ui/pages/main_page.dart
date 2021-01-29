part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage = 0;
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Container(
              color: 'FAFAFC'.toColor(),
            ),
          ),
          // Body Area
          SafeArea(
            child: PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  selectedPage = index;
                });
              },
              children: [
                FoodPage(),
                IllustrationPage(
                  title: 'hjkagsahjsgb',
                  subtitle: 'ysgdugsgdugdugyugsyudgyusgdyugsudgsyugd',
                  picturePath: 'assets/delivery.png',
                  buttonTitle1: 'Masuk',
                  buttonTap1: () {},
                ),
                Center(
                  child: Text('Profil'),
                ),
              ],
            ),
          ),
          // Bottom Navigation Bar
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomBottomNavigationBar(
              selectedIndex: selectedPage,
              onTap: (index) {
                setState(
                  () {
                    selectedPage = index;
                  },
                );
                pageController.jumpToPage(selectedPage);
              },
            ),
          )
        ],
      ),
    );
  }
}
