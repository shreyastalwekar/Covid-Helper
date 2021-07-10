import 'package:covid/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:intro_slider/scrollbar_behavior_enum.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({Key key}) : super(key: key);

  @override
  IntroScreenState createState() => new IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        marginTitle: EdgeInsets.only(top: 180, bottom: 25),
        title: "Covid-19 Detection",
        description: "Covid-19 Detection Using X-Ray",
        styleDescription: TextStyle(
            color: Colors.white,
            fontSize: 23.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontFamily: 'Raleway'),
        pathImage: "lib/asssets/xray.png",
        backgroundImage: 'lib/asssets/bluebg.png',
        backgroundOpacity: 0,
      ),
    );
    slides.add(
      new Slide(
        marginTitle: EdgeInsets.only(top: 180, bottom: 25),
        title: "Covid Prevention",
        description: "Official Websites for Precautionary Guidelines",
        styleDescription: TextStyle(
            color: Colors.white,
            fontSize: 23.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontFamily: 'Raleway'),
        pathImage: "lib/asssets/prevention.png",
        backgroundImage: 'lib/asssets/greenbg.png',
        backgroundOpacity: 0,
      ),
    );
    slides.add(
      new Slide(
        marginTitle: EdgeInsets.only(top: 180, bottom: 25),
        title: "Covid Analysis",
        description: "Covid Data and Statistics",
        styleDescription: TextStyle(
            color: Colors.white,
            fontSize: 23.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontFamily: 'Raleway'),
        pathImage: "lib/asssets/analysis.png",
        backgroundImage: 'lib/asssets/pinkbg.png',
        backgroundOpacity: 0,
      ),
    );
  }

  void onDonePress() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AnimatedBottomBar()),
    );
  }

  Widget renderNextBtn() {
    return Text('Next',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
        ));
  }

  Widget renderDoneBtn() {
    return Text('Done',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
        ));
  }

  Widget renderSkipBtn() {
    return Text('Skip',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
        ));
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = new List();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          margin: EdgeInsets.only(bottom: 60.0, top: 60.0),
          child: ListView(
            children: <Widget>[
              //SizedBox(height: 50),
              GestureDetector(
                  child: Image.asset(
                currentSlide.pathImage,
                width: 150.0,
                height: 150.0,
                fit: BoxFit.contain,
              )),
              Container(
                child: Text(
                  currentSlide.title,
                  style: currentSlide.styleTitle,
                  textAlign: TextAlign.center,
                ),
                margin: EdgeInsets.only(top: 90.0),
              ),
              Container(
                child: Text(
                  currentSlide.description,
                  style: currentSlide.styleDescription,
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
                margin: EdgeInsets.only(top: 20.0),
              ),
            ],
          ),
        ),
      ));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: IntroSlider(
        // List slides
        slides: this.slides,

        // Skip button
        renderSkipBtn: this.renderSkipBtn(),
        colorSkipBtn: Colors.white,
        highlightColorSkipBtn: Colors.grey,

        // Next button
        renderNextBtn: this.renderNextBtn(),

        // Done button
        renderDoneBtn: this.renderDoneBtn(),
        onDonePress: this.onDonePress,
        colorDoneBtn: Colors.white70,
        highlightColorDoneBtn: Colors.grey,

        // Dot indicator
        colorDot: Colors.white24,
        colorActiveDot: Colors.white,
        sizeDot: 13.0,

        // Show or hide status bar
        //shouldHideStatusBar: false,
        backgroundColorAllSlides: Colors.transparent,

        // Scrollbar
        //verticalScrollbarBehavior: scrollbarBehavior.SHOW_ALWAYS,
      ),
    );
  }
}
