import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: KfontFamilyName),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _getAppBar(),
        body: SafeArea(
          child: _getMainBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: KappBarBackgroundColor,
      title: Text(KappTitle),
    );
  }

  Widget _getMainBody() {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
            ),
            _getContent(),
          ],
        ),
      ),
    );
  }

  Widget _getContent() {
    return Column(
      children: [
        _getContentHeader(),
        SizedBox(height: 12),
        _socialIconRow(),
        SizedBox(height: 12),
        _getSkillCards(),
        SizedBox(height: 12),
        _getWorkHistory(),
      ],
    );
  }

  Widget _getContentHeader() {
    return Column(
      children: [
        SizedBox(height: 20.0),
        CircleAvatar(
          backgroundImage: AssetImage('images/me.jpg'),
          radius: KcircleAvatarRadiusSize,
        ),
        SizedBox(height: 15.0),
        Text(
          KwhoIam,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: KwhoIamFontSize,
            fontWeight: KwhoIamFontWeight,
          ),
        ),
        SizedBox(height: 15.0),
        Text(
          Kslogan,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _socialIconRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.linkedin),
          color: Colors.blue[600],
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.squareInstagram),
          color: Colors.red[400],
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.telegram),
          color: Colors.blue,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.github),
        ),
      ],
    );
  }

  Widget _getSkillCards() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var skill in skillList)
          Card(
            elevation: 3.0,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  width: 70.0,
                  child: Image(
                    image: AssetImage('images/$skill.png'),
                    height: 30.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('$skill'),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _getWorkHistory() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      width: double.infinity,
      color: KgetWorkHistoryColor,
      child: Column(
        children: [
          Text(
            KworkSectionTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: KworkSectionTitleFontSize,
              fontWeight: KworkSectionTitleFontWeight,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: double.infinity,
              ),
              for (var work in workList)
                Text(
                  work,
                  textDirection: TextDirection.rtl,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
