part of 'pages.dart';

class MainPage extends StatefulWidget {
  final int initialPage;

  const MainPage({Key key, this.initialPage = 0}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    selectedPage = widget.initialPage;
    pageController = PageController(initialPage: widget.initialPage);
  }

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
          )),
          SafeArea(
              child: PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                selectedPage = index;
              });
            },
            children: [
              Center(
                child: FoodPage(),
              ),
              Center(
                child: OrderHistoryPage(),
              ),
              Center(
                child: Text('sjoshwhuish'),
                // child: ProfilePage(),
              ),
            ],
          )),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomBottomNavigationBar(
              selectedIndex: selectedPage,
              onTap: (index) {
                setState(() {
                  selectedPage = index;
                });
                pageController.jumpToPage(selectedPage);
              },
            ),
          )
        ],
      ),
    );
  }
}
