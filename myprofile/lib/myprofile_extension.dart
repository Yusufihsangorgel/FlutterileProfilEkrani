import 'package:myprofile/myprofile_resources.dart';
import 'package:flutter/material.dart';

part 'myprofile.dart';

// Eğer view içerisinde oluşturduğun widgetlar çok fazla yer kaplıyorsa böyle extension yapabilirsin hocam sayfaya
// tabi view içerisindeki widgetları birden fazla sayfada kullanacaksan utils veya widgets diye klasör açıp orada class olarak tanımlayabilirsin

extension on MyProfile {
  AppBar _AppBarProject() {
    return AppBar(
      leading: const Icon(Icons.arrow_back_outlined),
      title: Text(
        BackButtonText,
      ),
      centerTitle: false,
    );
  }

  Widget _CircleSizedBox() {
    return SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        backgroundImage: AssetImage(ProfileImageAssets),
      ),
    );
  }

  Widget _NameText() {
    return Text(
      name,
      maxLines: _ProjectValuesFlex._NameMaxLine,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _EmailText() {
    return Text(
      email,
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _EditButton() {
    return TextButton(
      onPressed: () {},
      child: Text(
        Edit,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _EditProfileListTile() {
    return ListTile(
      leading: const Icon(Icons.account_circle_outlined),
      title: Text(
        MyAccount,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _MyStastListTile() {
    return ListTile(
      leading: const Icon(Icons.bar_chart_outlined),
      title: Text(
        MyStast,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _SettingListTile() {
    return ListTile(
      leading: const Icon(Icons.settings_outlined),
      title: Text(
        Setting,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _InvideFriendListTile() {
    return ListTile(
      leading: const Icon(Icons.person_add_alt_1_outlined),
      title: Text(
        InvideAfriend,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _HelpListTile() {
    return ListTile(
      leading: const Icon(Icons.help_outline),
      title: Text(
        Help,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
