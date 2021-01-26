part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
            child: Center(
              child: Text('Body Area'),
            ),
          ),
          // Bottom Navigation Bar
          Align(
              alignment: Alignment.bottomCenter,
              child: CustomBottomNavigationBar())
        ],
      ),
    );
  }
}
