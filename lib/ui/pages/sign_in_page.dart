part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Pizza Hits',
      subtitle: 'The best pizza on the planet',
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16,
            ),
            Text(
              'Silakan Login',
              style: blackFontStyleBig,
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              child: Text(
                'Email Address',
                style: blackFontStyleMedium,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black),
              ),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: greyFontStyle,
                    hintText: 'Masukkan Email Anda'),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              child: Text(
                'Password',
                style: blackFontStyleMedium,
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black),
              ),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: greyFontStyle,
                    hintText: 'Masukkan Password Anda'),
              ),
            ),
            // Button Masuk
            Container(
              height: 45,
              width: double.infinity,
              margin: EdgeInsets.only(top: 24),
              child: isLoading
                  ? loadingIndicator
                  : RaisedButton(
                      elevation: 0,
                      color: mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onPressed: () async {
                        setState(() {
                          isLoading = true;
                        });
                        // Sign In User
                        await context.read<UserCubit>().signIn(
                            emailController.text, passwordController.text);

                        // Mengambil State Saat Ini
                        UserState state = context.read<UserCubit>().state;

                        // Get Data Food Dan Transaksi
                        if (state is UserLoaded) {
                          // Get Data Food
                          context.read<FoodCubit>().getFood();
                          // Get Data Transaksi
                          context.read<TransactionCubit>().getTransactions();
                          // Masuk Ke Main Page
                          Get.to(MainPage());
                        } else {
                          Get.snackbar('', '',
                              titleText: Text(
                                'Sign In Gagal',
                                style: whiteFontStyleRegular,
                              ),
                              icon: Icon(MdiIcons.closeCircleOutline),
                              backgroundColor: "D9435E".toColor(),
                              messageText: Text(
                                (state as UserSignInFailed).message,
                                style: whiteFontStyleRegular,
                              ));
                          setState(() {
                            isLoading = false;
                          });
                        }
                      },
                      child: Text(
                        'Masuk',
                        style: whiteFontStyleRegular,
                      ),
                    ),
            ),
            // Button Daftar
            Container(
              height: 45,
              width: double.infinity,
              margin: EdgeInsets.only(top: 24),
              child: isLoading
                  ? SpinKitFadingCircle(
                      size: 45,
                      color: mainColor,
                    )
                  : RaisedButton(
                      elevation: 0,
                      color: greyColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onPressed: () {
                        Get.to(SignUpPage());
                      },
                      child: Text(
                        'Buat Akun Baru',
                        style: whiteFontStyleRegular,
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
