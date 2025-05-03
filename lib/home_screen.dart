import 'package:coustm_widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int heightSlider = 120;
  int age = 30;
  int weight = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        backgroundColor: darkBlueColor,
      ),
      backgroundColor: darkBlueColor,

      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    Colour: blueColor,
                    cardChid: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: FaIcon(
                            FontAwesomeIcons.mars,
                            color: Colors.white,
                            size: 80,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Male", style: textStyle),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    Colour: blueColor,
                    cardChid: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: FaIcon(
                            FontAwesomeIcons.addressBook,
                            color: Colors.white,
                            size: 80,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Female", style: textStyle),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              Colour: blueColor,
              cardChid: Column(
                children: [
                  Text("Height", style: textStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("${heightSlider}", style: numtextStyle),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("cm", style: numtextStyle),
                      ),
                    ],
                  ),
                  Slider(
                    min: 120,
                    max: 200,
                    activeColor: Colors.white,
                    inactiveColor: Colors.white70,
                    thumbColor: Colors.pink,
                    value: heightSlider.toDouble(),
                    onChanged: (double value) {
                      setState(() {
                        heightSlider = value.toInt();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    Colour: blueColor,
                    cardChid: Column(
                      children: [
                        Text("Age", style: textStyle),
                        Text('${age}', style: numtextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RoundButton(icon: FontAwesomeIcons.plus),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RoundButton(icon: FontAwesomeIcons.minus),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    Colour: blueColor,
                    cardChid: Column(
                      children: [
                        Text("Weight", style: textStyle),
                        Text('${weight}', style: numtextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RoundButton(icon: FontAwesomeIcons.plus),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RoundButton(icon: FontAwesomeIcons.minus),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "Calculate",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.Colour, required this.cardChid});

  Color Colour;
  final Widget cardChid;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class RoundButton extends StatelessWidget {
  const RoundButton({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      child: Icon(icon),
      onPressed: () {},
      constraints: BoxConstraints(minWidth: 56.0, minHeight: 56.0),
      shape: CircleBorder(),
      fillColor: Colors.blueGrey,
    );
  }
}
