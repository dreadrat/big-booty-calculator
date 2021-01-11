import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

final activeCardColor = Colors.grey[800];
final inactiveCardColor = Colors.grey[900];
final bottomContainerHeight = 70.0;

enum Gender {
  male,
  female,
}

Gender selectedGender;


class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.centerRight,
              colors: [Colors.blueGrey, Colors.purple])),
      child: Scaffold(
          appBar: AppBar(
            title: Text('BIG BOOTY CALCULATOR'),
          ),
          body: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                           selectedGender = Gender.male;

                          });
                          ;
                        },
                        child: ReusableCard(
                          cardChild: IconContent(
                              iconText: 'big boy booty', emoji: '🍆'),
                          cardColor: selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        child: ReusableCard(
                          cardChild:
                              IconContent(iconText: 'ladies ass-et', emoji: '🍑'),
                          cardColor: selectedGender == Gender.female ? activeCardColor : inactiveCardColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardColor: activeCardColor,
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        cardColor: activeCardColor,
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        cardColor: activeCardColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Color(0xFFEB1555),
                width: double.infinity,
                height: bottomContainerHeight,
              )
            ],
          )),
    );
  }
}
