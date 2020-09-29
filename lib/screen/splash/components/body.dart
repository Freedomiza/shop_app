import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/size_config.dart';
import './dot.dart';
import './splash_content.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> splashData = [
    {
      "title": "TOKOTO",
      "subTitle": "Welcome to Tokoto, Let's shop!",
      "image": "assets/images/splash_1.png",
    },
    {
      "title": "TOKOTO",
      "subTitle": "Welcome to Tokoto, Let's shop!",
      "image": "assets/images/splash_2.png",
    },
    {
      "title": "TOKOTO",
      "subTitle": "Welcome to Tokoto, Let's shop!",
      "image": "assets/images/splash_3.png",
    }
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Expanded(
                    flex: 3,
                    child: PageView.builder(
                      itemCount: splashData.length,
                      itemBuilder: (context, index) => SplashContent(
                        title: splashData[index]["title"],
                        subTitle: splashData[index]["subTitle"],
                        image: splashData[index]["image"],
                      ),
                      onPageChanged: (value) {
                        setState(() {
                          currentPage = value;
                        });
                      },
                    )),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20)),
                      child: Column(
                        children: [
                          Spacer(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                                3,
                                (index) => Dot(
                                      active: currentPage == index,
                                    )),
                          ),
                          Spacer(
                            flex: 3,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: getProportionateScreenWidth(16)),
                            child: DefaultButton(
                              text: "Continue",
                              onPress: () {},
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            )));
  }
}
