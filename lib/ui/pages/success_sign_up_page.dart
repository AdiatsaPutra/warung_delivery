part of 'pages.dart';

class SuccessSignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: 'Berhasil Mendaftar',
        subtitle: 'Silakan nikmati layanan kami',
        picturePath: 'assets/delivery.png',
        buttonTitle1: 'Pesan Sekarang',
        buttonTap1: () {},
      ),
    );
  }
}
