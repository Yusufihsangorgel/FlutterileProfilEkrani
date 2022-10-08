// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBarProject(),
      body: Stack(fit: StackFit.expand, children: [
        const Spacer(flex: _ProjectValuesFlex._FlexStack),
        Column(
          children: const [
            Spacer(flex: _ProjectValuesFlex._FlexColumn),
            _CircleSizedBox(),
            _NameText(),
            _EmailText(),
            _EditButton(),
            _EditProfileListTile(),
            _MyStastListTile(),
            _SettingListTile(),
            _InvideFriendListTile(),
            _HelpListTile(),
          ],
        ),
      ]),
    );
  }

  AppBar _AppBarProject() {
    return AppBar(
      leading: const Icon(Icons.arrow_back_outlined),
      title: const Text(
        _ProjectText._BackButton,
      ),
      centerTitle: false,
    );
  }
}

class _ProjectText {
  static const String _BackButton = "Back";
  static const String _name = "Ali Erdem";
  static const String _email = "alierdem1515@gmail.com";
  static const String _Edit = "Edit";
  static const String _ProfileImageAssets = "assets/png/profile.jpg";
  static const String _MyAccount = "My account";
  static const String _MyStast = "My stast";
  static const String _Setting = "Setting";
  static const String _InvideAfriend = "Invide a friend";
  static const String _Help = "Help";
}

class _ProjectValuesFlex {
  static const int _FlexStack = 4;
  static const int _FlexColumn = 6;
  static const int _NameMaxLine = 1;
  static const double _NameScaleFactor = 1.5;
  static const double _EmailTextScale = 0.8;
}

class ProjectColumnSizes {
  static const double _CircleHeight = 200;
  static const double _CircleWith = 200;
}

class _CircleSizedBox extends StatelessWidget {
  const _CircleSizedBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: ProjectColumnSizes._CircleHeight,
      width: ProjectColumnSizes._CircleWith,
      child: CircleAvatar(
        backgroundImage: AssetImage(_ProjectText._ProfileImageAssets),
      ),
    );
  }
}

class _NameText extends StatelessWidget {
  const _NameText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(_ProjectText._name,
        maxLines: _ProjectValuesFlex._NameMaxLine,
        overflow: TextOverflow.clip,
        textScaleFactor: _ProjectValuesFlex._NameScaleFactor,
        style: Theme.of(context).textTheme.headline5);
  }
}

class _EmailText extends StatelessWidget {
  const _EmailText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(_ProjectText._email,
        maxLines: _ProjectValuesFlex._NameMaxLine,
        overflow: TextOverflow.clip,
        textScaleFactor: _ProjectValuesFlex._EmailTextScale,
        style: Theme.of(context).textTheme.subtitle2);
  }
}

class _EditButton extends StatelessWidget {
  const _EditButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        _ProjectText._Edit,
        maxLines: _ProjectValuesFlex._NameMaxLine,
        overflow: TextOverflow.clip,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}

class _HelpListTile extends StatelessWidget {
  const _HelpListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: Icon(Icons.help_outline_sharp),
      title: Text(_ProjectText._Help),
      trailing: Icon(Icons.chevron_right_outlined),
    );
  }
}

class _InvideFriendListTile extends StatelessWidget {
  const _InvideFriendListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
        leading: Icon(Icons.person_add_alt),
        title: Text(_ProjectText._InvideAfriend),
        trailing: Icon(Icons.chevron_right_outlined));
  }
}

class _SettingListTile extends StatelessWidget {
  const _SettingListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: Icon(Icons.settings),
      title: Text(_ProjectText._Setting),
      trailing: Icon(Icons.chevron_right_outlined),
    );
  }
}

class _MyStastListTile extends StatelessWidget {
  const _MyStastListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
        leading: Icon(Icons.stacked_bar_chart_sharp),
        title: Text(_ProjectText._MyStast),
        trailing: Icon(Icons.chevron_right_outlined));
  }
}

class _EditProfileListTile extends StatelessWidget {
  const _EditProfileListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: Icon(Icons.person_rounded),
      title: Text(_ProjectText._MyAccount),
      trailing: Icon(Icons.chevron_right_outlined),
    );
  }
}
