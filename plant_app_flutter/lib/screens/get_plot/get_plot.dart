import 'package:flutter/material.dart';
import 'package:plant_app_flutter/constants.dart';

class GetPlot extends StatelessWidget {
  const GetPlot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C'];
    final List<String> names = <String>[
      'Paul Walker',
      'Alan Turin',
      'Peter Gregory',
      'Gavin Belson',
      'Richard Hendricks',
      'Ngolo Kante'
    ];
    final List<String> price = <String>[
      '1 mil',
      '700k',
      '350k',
      '2.3 mil',
      '600k',
      '250k'
    ];
    final List<String> location = [
      'Nkwen, Bamenda, NW',
      'Bambui, Bamenda, NW',
      'Mbouda, Bafoussam, W',
      'Kousseri, Maroua, FN',
      'Bambili, Bamenda, NW',
      'Dchang, Bafoussam, W',
    ];
    final List<String> date = [
      '21th Nov 2019',
      '10th Feb 2021',
      '15th Sept 2020',
      '10th Dec 2020',
      '14th Jan 2019',
      '04th Nov 2018',
    ];
    final List<int> colorCodes = <int>[600, 500, 100, 600, 500, 100];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Get a Plot'),
          bottom: TabBar(
            indicatorColor: Colors.blue[700],
            tabs: [
              Tab(
                child: Text(
                  "Buy a Plot",
                  style: kButtonTextStyle,
                ),
              ),
              Tab(
                child: Text(
                  "Rent a Plot",
                  style: kButtonTextStyle,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: names.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 6.0,
                      horizontal: 6.0,
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 8.0, color: Colors.white),
                          bottom: BorderSide(
                              width: 1.0, color: Colors.grey.shade300),
                          left: BorderSide(width: 2.0, color: Colors.white),
                          right: BorderSide(
                              width: 1.0, color: Colors.grey.shade300),
                        ),
                        //borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: kBackgroundColor2,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3.0,
                            offset: Offset(1.0, 2.0),
                            color: Colors.grey.shade300,
                            spreadRadius: 2.0,
                          )
                        ]),
                    height: 115,
                    child: Row(
                      //verticalDirection: VerticalDirection.down,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.ideographic,
                              children: [
                                Text(
                                  '${names[index]}',
                                  style: kButtonTextStyle,
                                ),
                                Text(
                                  '${price[index]} FCFA',
                                  style: kPlotPriceTextStyle,
                                ),
                                Text(
                                  '${location[index]}',
                                  style: kLocationTextStyle,
                                ),
                                Text(
                                  '${date[index]}',
                                  style: kLocationTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              top: 10, left: 5, right: 0, bottom: 0),
                          //width: 90,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.asset(
                              'assets/images/buyplot.jpg',
                              width: 90.0,
                              height: 85.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          // child: FittedBox(
                          //   alignment: Alignment.centerLeft,
                          //   fit: BoxFit.contain,
                          //   child: Image.asset('assets/images/newsimg.jpg'),
                          // ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

// color: Colors.amber[colorCodes[index]],
// child: Center(child: Text('Entry ${entries[index]}')),
