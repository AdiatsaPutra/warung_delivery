part of 'shared.dart';

// Colors
Color mainColor = "DA291C".toColor();
Color greyColor = "8D92A3".toColor();

// Loading Indicator
Widget loadingIndicator = SpinKitFadingCircle(
  size: 45,
  color: mainColor,
);

// FontStyles
TextStyle greyFontStyle = GoogleFonts.poppins(color: greyColor);
TextStyle blackFontStyleBig = GoogleFonts.poppins(
    color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500);
TextStyle blackFontStyleMedium = GoogleFonts.poppins(
    color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);
TextStyle blackFontStyleRegular =
    GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.w500);
TextStyle whiteFontStyleRegular =
    GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w500);

const double defaultMargin = 24;
