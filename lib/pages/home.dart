import 'package:flutter/material.dart';
import 'package:super_z/constants.dart';
import 'package:super_z/pages/chatroom.dart';
import 'package:super_z/widgets/carousel.dart';
import 'package:super_z/widgets/custom_button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDesktop;
  String dataImageUrl = 'assets/images/covid-data.png';
  String groupName = 'fight covid-19';
  int selectedCard = 1;

  onCaroselTapped(String url, {group, card}) {
    setState(() {
      dataImageUrl = url;
      groupName = group;
      selectedCard = card;
    });
  }

  @override
  Widget build(BuildContext context) {
    isDesktop = MediaQuery.of(context).size.width > 500;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title: Text(
          'Zipup',
          style: textStyle(50),
        ),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 8,
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    child: Row(
                      children: [
                        CarouselWidget(
                          imageUrl: 'assets/images/covid.jpg',
                          imageText: 'Covid-19',
                          color: selectedCard == 1 ? green : white,
                          onPressed: () => onCaroselTapped(
                              'assets/images/covid-data.png',
                              group: 'fight coid-19',
                              card: 1),
                        ),
                        CarouselWidget(
                          imageUrl: 'assets/images/forest.jpg',
                          imageText: 'Deforestation',
                          color: selectedCard == 2 ? green : white,
                          onPressed: () => onCaroselTapped(
                              'assets/images/forest-data.png',
                              group: 'save forest',
                              card: 2),
                        ),
                        CarouselWidget(
                          imageUrl: 'assets/images/global-warming.jpg',
                          imageText: 'Global Warming',
                          color: selectedCard == 3 ? green : white,
                          onPressed: () => onCaroselTapped(
                              'assets/images/warming-data.png',
                              group: 'reduce global warming',
                              card: 3),
                        ),
                        CarouselWidget(
                          imageUrl: 'assets/images/climate-change.jpg',
                          imageText: 'Climate Change',
                          color: selectedCard == 4 ? green : white,
                          onPressed: () => onCaroselTapped(
                              'assets/images/climate-data.png',
                              group: 'prevent climate change',
                              card: 4),
                        ),
                        CarouselWidget(
                          imageUrl: 'assets/images/pollution.gif',
                          imageText: 'Pollution',
                          color: selectedCard == 5 ? green : white,
                          onPressed: () => onCaroselTapped(
                              'assets/images/pollution-data.png',
                              group: 'breath good air',
                              card: 5),
                        ),
                        CarouselWidget(
                          imageUrl: 'assets/images/water-scarcity.jpg',
                          imageText: 'Water Scarcity',
                          color: selectedCard == 6 ? green : white,
                          onPressed: () => onCaroselTapped(
                              'assets/images/water-data.png',
                              group: 'give fresh water',
                              card: 6),
                        ),
                        CarouselWidget(
                          imageUrl: 'assets/images/plastic-waste.jpg',
                          imageText: 'Plastic Usage',
                          color: selectedCard == 7 ? green : white,
                          onPressed: () => onCaroselTapped(
                              'assets/images/plastic-data.png',
                              group: 'reduce plastics',
                              card: 7),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        SingleChildScrollView(
                          child: Container(
                            child: Image.asset(
                              dataImageUrl,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        CustomButton(
                          buttonText: 'Join to ' + groupName,
                          textSize: 15,
                          horizontal: 25,
                          vertical: 10,
                          padding: 15,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          isDesktop ? ChatRoom() : Container(),
        ],
      ),
      floatingActionButton: isDesktop
          ? Container()
          : FloatingActionButton(
              backgroundColor: green,
              child: Text(
                'Z',
                style: textStyle(40),
              ),
              onPressed: () {},
            ),
    );
  }
}
