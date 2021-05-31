import 'package:flutter/material.dart';
import 'package:plant_app_flutter/constants.dart';

class PestsAndDiseaases extends StatelessWidget {
  const PestsAndDiseaases({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pests and Diseases'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                child: Container(
                  child: Text(
                      'Our Platform allows for easy detection of crop diseases and crop malnourishment'
                      'Just take a photo of the crop and our system will do the rest'),
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 35.0,
                    ),
                    PestsButtonWidget(
                      anIcon: Icons.photo_camera,
                      buttonCaption: 'Take a Photo',
                      onTapped: () {},
                    ),
                    //SizedBox(height: 15.0),
                    PestsButtonWidget(
                      anIcon: Icons.assessment_outlined,
                      buttonCaption: 'Analyse Image',
                      onTapped: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PestsButtonWidget extends StatelessWidget {
  final Function onTapped;
  final IconData anIcon;
  final String buttonCaption;

  const PestsButtonWidget({
    required this.onTapped,
    required this.anIcon,
    required this.buttonCaption,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTapped,
      child: Expanded(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 0.0,
          ),
          height: 60.0,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            boxShadow: [
              BoxShadow(
                offset: Offset(4, 4),
                color: Colors.grey.shade500,
                blurRadius: 10,
                spreadRadius: 1.0,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                anIcon,
                size: 50.0,
                color: kBackgroundColor2,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                buttonCaption,
                style: kPestsButtonTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
