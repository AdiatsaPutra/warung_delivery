part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Welcome To Warung Delivery',
      subtitle: 'Memberikan anda makanan terbaik',
      child: Container(
        margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
      ),
    );
  }
}
