part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function onbackButtonPressed;
  final Widget child;
  final Color backColor;

  GeneralPage(
      {this.title = "title",
      this.subtitle = "subtitle",
      this.onbackButtonPressed,
      this.backColor,
      this.child});
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
              color: backColor ?? "FAFAFC".toColor(),
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    // HEADER HERE
                    Container(
                      margin: EdgeInsets.only(bottom: defaultMargin),
                      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                      width: double.infinity,
                      height: 100,
                      color: Colors.white,
                      child: Row(
                        children: [
                          onbackButtonPressed != null
                              ? Container(
                                  margin: EdgeInsets.only(right: 26),
                                  height: 24,
                                  width: 24,
                                  child: Icon(MdiIcons.arrowLeft),
                                )
                              : SizedBox(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: GoogleFonts.poppins(
                                    fontSize: 22, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                subtitle,
                                style: GoogleFonts.poppins(
                                    color: greyColor,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // CONTENT HERE
                    child ?? SizedBox()
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
