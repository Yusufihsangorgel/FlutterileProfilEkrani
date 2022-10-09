

part of 'myprofile_extension.dart';

class MyProfile extends StatelessWidget with myProfileResources {
  MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBarProject(),
      body: Stack(fit: StackFit.expand, children: [
        const Spacer(flex: _ProjectValuesFlex._FlexStack),
        Column(
          children: [
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
