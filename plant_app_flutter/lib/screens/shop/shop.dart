import 'package:flutter/material.dart';
import 'package:plant_app_flutter/constants.dart';

class Shop extends StatelessWidget {
  const Shop({
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
    final List<String> description = [
      'Senior Agro Technician with 4 years of experience',
      'Vetenarian with 3+ years of working experience',
      'General non skilled Laborer',
      'Expert in machines and technical stuff',
      'Senior Agro Technician with 4 years of experience',
      'Senior Agro Technician with 4 years of experience',
    ];
    final List<String> previousRole = [
      'Worked at XYZ company as head of Agric Sector',
      'Systems mechanical engineer',
      'Unemployed',
      'Student at Agric school Dchang',
      'Student at coltech bambili',
      'Senior Agro Technician with 4 years of experience',
    ];
    final List<int> colorCodes = <int>[600, 500, 100, 600, 500, 100];
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 8.0, color: Colors.white),
                  bottom: BorderSide(width: 1.0, color: Colors.grey.shade300),
                ),
                color: kBackgroundColor2,
                //color: Colors.amber[colorCodes[index]],
              ),
              height: 140,
              child: Row(
                //verticalDirection: VerticalDirection.down,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(top: 0, left: 5, right: 5, bottom: 10),
                    margin: EdgeInsets.only(right: 10),
                    width: 70,
                    child: FittedBox(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.contain,
                      child: Image.asset('assets/images/newsimg.jpg'),
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.ideographic,
                      children: [
                        Text('${names[index]}'),
                        Text('${description[index]}'),
                        Text('${previousRole[index]}'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// color: Colors.amber[colorCodes[index]],
// child: Center(child: Text('Entry ${entries[index]}')),
