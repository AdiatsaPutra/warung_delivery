part of 'pages.dart';

class SuccessOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: 'Terima Kasih Sudah Order',
        subtitle: 'Silakan tunggu hingga pesanan anda tiba',
        picturePath: 'assets/delivery.png',
        buttonTitle1: 'Pesan Menu Lainnya',
        buttonTap1: () {},
        buttonTap2: () {},
        buttonTitle2: 'Lihat Pesanan Saya',
      ),
    );
  }
}
