part of 'pages.dart';

class AddressPage extends StatefulWidget {
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nomorHPController = TextEditingController();
    TextEditingController alamatController = TextEditingController();
    TextEditingController nomorRumahController = TextEditingController();
    return GeneralPage(
      title: 'Alamat',
      subtitle: 'Masukkan Alamat Valid Anda',
      onbackButtonPressed: () {
        Get.back();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              'NomorHp',
              style: blackFontStyleMedium,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: nomorHPController,
              obscureText: true,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Masukkan NomorHp Anda'),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              'Alamat',
              style: blackFontStyleMedium,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: alamatController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Masukkan Alamat Anda'),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              'Nomor Rumah',
              style: blackFontStyleMedium,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: nomorRumahController,
              obscureText: true,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Masukkan Nomor Rumah Anda'),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              'Kota',
              style: blackFontStyleMedium,
            ),
          ),
          Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black),
              ),
              child: DropdownButton(
                  isExpanded: true,
                  underline: SizedBox(),
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        'Bandung',
                        style: blackFontStyleRegular,
                      ),
                    ),
                    DropdownMenuItem(
                      child: Text(
                        'Jakarta',
                        style: blackFontStyleRegular,
                      ),
                    ),
                    DropdownMenuItem(
                      child: Text(
                        'Surabaya',
                        style: blackFontStyleRegular,
                      ),
                    ),
                  ],
                  onChanged: (item) {})),
          // Button Lanjut
          Container(
            height: 45,
            width: double.infinity,
            margin: EdgeInsets.only(top: 24),
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: RaisedButton(
              elevation: 0,
              color: mainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              onPressed: () {},
              child: Text(
                'Daftar Sekarang',
                style: whiteFontStyleRegular,
              ),
            ),
          ),
          // Button Daftar
        ],
      ),
    );
  }
}
