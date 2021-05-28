import 'package:flutter/material.dart';

class PlantCard extends StatefulWidget {
  @override
  _PlantCardState createState() => _PlantCardState();
}

class _PlantCardState extends State<PlantCard> {
  ScrollController _scrollController;

  List allDescriptions = [
    'Aloe vera is a succelent plant of the genus Aloe. I\'ts medicinal uses and air purifying ability make it the plant that you shouldn\'t live without.',
    'Vera is a succelent plant of the genus Aloe. I\'ts medicinal uses and air ',
    'Aloe vera is a succelent plant of the genus Aloe. I\'ts medicinal uses and air purifying'
  ];

  String description;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(changedesc);
    setState(() {
      description = allDescriptions[0];
    });
  }

  changedesc() {
    var value = _scrollController.offset.round();
    var descIndex = (value / 150).round();
    setState(() {
      description = allDescriptions[descIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: <Widget>[
        Container(
          height: 450.0,
          child: ListView(
            padding: EdgeInsets.only(left: 40.0),
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _buildCard(size, 'assets/whiteplant.png', '25', 'OUTDOOR',
                  'Aloe Vera', Color.fromRGBO(49, 160, 95, 1)),
              SizedBox(width: 30.0),
              _buildCard(size, 'assets/smallplant.png', '25', 'INDOOR',
                  'Monster', Color.fromRGBO(128, 173, 137, 1)),
              SizedBox(width: 30.0),
              _buildCard(size, 'assets/smallplant.png', '25', 'INDOOR', 'Ficus',
                  Color.fromRGBO(49, 160, 95, 1)),
              SizedBox(width: 30.0),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: size.height / 100,
              ),
              Text(
                description,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.black54,
                    fontSize: 12.5,
                    height: 1.5),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _buildCard(size, String imgPath, String price, String plantType,
      String plantName, color) {
    return Stack(
      children: <Widget>[
        Container(
          height: size.height / 2.1,
          width: size.width / 1.6,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: color,
            ),
            height: 250.0,
            width: 225.0,
            child: Column(
              children: <Widget>[
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            SizedBox(height: 10.0),
                            Text(
                              'FROM',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white.withOpacity(0.6)),
                            ),
                            Text(
                              '\$' + price,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        SizedBox(width: 10.0)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Image(
                        image: AssetImage(imgPath),
                        height: size.height / 3.2,
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: size.width / 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          plantType,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white.withOpacity(0.6)),
                        ),
                        Text(
                          plantName,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: size.height / 80),
                Row(
                  children: <Widget>[
                    SizedBox(width: size.width / 10),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 0.5),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.transparent,
                      ),
                      child: Icon(Icons.wb_sunny_outlined,
                          color: Colors.white.withOpacity(0.4), size: 20.0),
                    ),
                    SizedBox(width: 15.0),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 0.5),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.transparent,
                      ),
                      child: Icon(Icons.water_damage_outlined,
                          color: Colors.white.withOpacity(0.4), size: 20.0),
                    ),
                    SizedBox(width: 15.0),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 0.5),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.transparent,
                      ),
                      child: Icon(Icons.thermostat_outlined,
                          color: Colors.white.withOpacity(0.4), size: 20.0),
                    ),
                    SizedBox(width: 10.0),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Icon(Icons.help_outline,
                            color: Colors.white.withOpacity(0.4), size: 20.0),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 90.0, top: size.height / 2.3),
          child: Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0), color: Colors.black),
            child: Center(
                child: Icon(Icons.shopping_cart_outlined, color: Colors.white)),
          ),
        )
      ],
    );
  }
}
