import 'package:covid/xray.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            //padding: EdgeInsets.all(10),
            height: 300,
            width: 500,
            child: Image.network(
                'https://previews.123rf.com/images/kotexvector/kotexvector1809/kotexvector180900140/109683217-abstract-health-medical-science-healthcare-icon-digital-technology-science-concept-modern-innovation.jpg',
                fit: BoxFit.fill),
          ),
          ListView(
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(0, 90, 0, 0)),
              SizedBox(height: 90),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Material(
                  elevation: 5.0,
                  child: Container(
                    padding: EdgeInsets.all(7.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 7.0,
                        ),
                        Container(
                          margin: EdgeInsets.all(1.0),
                          height: 200,
                          child: Swiper.children(
                            autoplay: true,
                            loop: true,
                            pagination: SwiperPagination(
                              margin: EdgeInsets.only(
                                right: 25.0,
                              ),
                              builder: DotSwiperPaginationBuilder(
                                  color: Colors.grey),
                            ),
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.only(bottom: 20.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child: Image.network(
                                        'https://sambadenglish.com/wp-content/uploads/2020/03/CoronaVirus.jpeg',
                                        fit: BoxFit.fill),
                                  )),
                              Container(
                                  margin: EdgeInsets.only(bottom: 20.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child: Image.network(
                                        'https://ichef.bbci.co.uk/news/976/cpsprodpb/16131/production/_115371409_gettyimages-1265248637.jpg',
                                        fit: BoxFit.fill),
                                  )),
                              Container(
                                  margin: EdgeInsets.only(bottom: 20.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child: Image.network(
                                        'https://image.freepik.com/free-vector/coronavirus-wallpaper-with-vaccine-bottle-syringe_52683-48578.jpg',
                                        fit: BoxFit.fill),
                                  )),
                              Container(
                                  margin: EdgeInsets.only(bottom: 20.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child: Image.network(
                                        'https://d6vn5uj5sr4f6.cloudfront.net/wp-content/uploads/2020/03/covid.jpeg',
                                        fit: BoxFit.fill),
                                  )),
                              Container(
                                  margin: EdgeInsets.only(bottom: 20.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child: Image.network(
                                        'https://1.bp.blogspot.com/-8xdjSJtDu4Q/XuBLaLGfIMI/AAAAAAAAFOE/Kh0d7jtO0EYH7pT_6Mq_IBYTMZB9CDjEgCLcBGAsYHQ/s1600/World-Blood-Donor-Day-Quotes-Slogan-Poster-Images-Pictures%2B%25282%2529.jpg',
                                        fit: BoxFit.fill),
                                  )),
                              Container(
                                  margin: EdgeInsets.only(bottom: 20.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child: Image.network(
                                        'https://www.magiccomputers.in/wp-content/uploads/2016/10/covid-19_prevention.png',
                                        fit: BoxFit.fill),
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                indent: 35,
                endIndent: 35,
              ),
              Container(
                padding: EdgeInsets.all(1.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Covid Detection",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'CreteRound',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: <Widget>[
                        // Padding(padding:EdgeInsets.only(right: 20)),
                        const SizedBox(height: 40, width: 70.0),
                        Expanded(
                          child: RaisedButton(
                            color: Color(0xff009a4f),
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Text("Covid Detector"),
                            onPressed: () {
                              //Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetectMain()),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 40, width: 70.0),

                        SizedBox(width: 10.0),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(
                      thickness: 2,
                      indent: 35,
                      endIndent: 35,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: RaisedButton.icon(
                          color: Colors.blue,
                          textColor: Colors.white,
                          icon: Icon(Icons.phone),
                          label: Text("Emergency Contact"),
                          onPressed: () async {
                            var url = 'tel:7020196571';

                            if (await canLaunch(url)) {
                              launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          }),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
