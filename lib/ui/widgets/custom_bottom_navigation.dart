part of 'widgets.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int index;
  final Function(int index) onTap;
  CustomBottomNavigationBar({this.index, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 32,
            width: 32,
            child: Icon(
              MdiIcons.home,
              color: mainColor,
            ),
          )
        ],
      ),
    );
  }
}
