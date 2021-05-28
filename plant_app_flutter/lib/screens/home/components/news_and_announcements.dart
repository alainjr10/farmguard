import 'package:flutter/material.dart';
import 'package:plant_app_flutter/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class News_And_Announcements extends StatelessWidget {
  const News_And_Announcements({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double cWidth = MediaQuery.of(context).size.width * 0.8;
    return Flexible(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(
              left: 10,
              top: 5.0,
              right: 10.0,
              bottom: 5.0,
            ),
            child: Text(
              'News and Announcements',
              style: kTitleTextStyle,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(
              left: 5,
              top: 5.0,
              right: 5.0,
              bottom: 5.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildNewsGestureDetector(
                  'Header1',
                  'Lorem ipsum  Maxime mollitia nol another display text ',
                  'assets/images/newsimg.jpg',
                  () {
                    return _launchURL('https://google.com');
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                buildNewsGestureDetector(
                  'Header3',
                  'Lorem ipsum  Maxime mollitia nol another display text ',
                  'assets/images/newsimg.jpg',
                  () {
                    return _launchURL('https://google.com');
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                buildNewsGestureDetector(
                  'Header',
                  'Lorem ipsum  Maxime mollitia nol another display text ',
                  'assets/images/newsimg.jpg',
                  () {
                    return _launchURL('https://google.com');
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  GestureDetector buildNewsGestureDetector(
      String header, text, imageUrl, Function tappedURL()) {
    return GestureDetector(
      onTap: tappedURL,
      // onTap: () {
      //   return _launchURL();
      // },
      child: Row(
        children: [
          Image(
            image: AssetImage(
              imageUrl,
            ),
            height: 75.0,
            width: 90,
          ),
          Flexible(
            child: Container(
              padding: const EdgeInsets.only(
                left: 14.0,
                right: 12.0,
                bottom: 10.0,
                top: 5.0,
              ),
              margin: EdgeInsets.only(right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                mainAxisAlignment: MainAxisAlignment.start,
                textBaseline: TextBaseline.ideographic,
                children: [
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          header,
                          style: kMiniHeaderTextStyle,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          text,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _launchURL(String url) async {
    //const url = 'https://google.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
