part of 'widgets.dart';

class CustomTabBar extends StatelessWidget {
  final int selectedIndex;
  final List<String> titles;
  final Function(int) onTap;

  CustomTabBar({this.selectedIndex, @required this.titles, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 48),
            height: 1,
            color: "F2F2F2".toColor(),
          ),
          Row(
            children: titles
                .map(
                  (e) => Padding(
                    padding: EdgeInsets.only(left: defaultMargin),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // OnTap Berdasarkan Index Yang Dipilih
                            if (onTap != null) {
                              onTap(titles.indexOf(e));
                            }
                          },
                          child: Text(
                            e,
                            style: (titles.indexOf(e) == selectedIndex)
                                ? blackFontStyleRegular.copyWith(
                                    fontWeight: FontWeight.w500)
                                : greyFontStyle,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        // Indicator Line
                        Container(
                          width: 100,
                          height: 3,
                          padding: EdgeInsets.only(top: 13),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.2),
                              color: (titles.indexOf(e) == selectedIndex)
                                  ? "020202".toColor()
                                  : Colors.transparent),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
