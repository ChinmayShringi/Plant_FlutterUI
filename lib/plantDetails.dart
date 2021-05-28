import 'package:flutter/material.dart';

class PlantDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(color: Color(0xFF399D63)),
                ),
                Positioned(
                  top: size.height / 2,
                  child: Container(
                    height: size.height / 2,
                    width: size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: size.height / 20,
                  left: size.width / 20,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: size.height / 20,
                    left: size.width - 60.0,
                  ),
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Color(0xFF4DA774),
                    mini: true,
                    elevation: 0.0,
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ),
                ),
                Positioned(
                  top: size.height / 20,
                  left: size.width - 30.0,
                  child: Container(
                    height: 18.0,
                    width: 18.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.0),
                        color: Colors.white),
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Color(0xFF399D63),
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: size.width / 10,
                    top: size.height / 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'INDOOR',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 10.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white.withOpacity(0.6),
                        ),
                      ),
                      Text(
                        'Ficus',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 40.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      SizedBox(height: size.height / 30),
                      Text(
                        'FROM',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 10.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white.withOpacity(0.6),
                        ),
                      ),
                      Text(
                        '\$30',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      SizedBox(height: size.height / 30),
                      Text(
                        'SIZES',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 10.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white.withOpacity(0.6),
                        ),
                      ),
                      Text(
                        'Small',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      SizedBox(height: size.height / 30),
                      Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60.0),
                            color: Colors.black),
                        child: Center(
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: size.height / 2.1,
                  left: size.width / 2.2,
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius: 0,
                            blurRadius: 70,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Container(
                        height: 40,
                        width: 100,
                      )),
                ),
                Positioned(
                  top: size.height / 5,
                  left: size.width / 4,
                  child: Image(
                    image: AssetImage('assets/whiteplant.png'),
                    fit: BoxFit.cover,
                    height: 350.0,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                      top: size.height / 1.6,
                      left: size.width / 10,
                      right: size.width / 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'All to know...',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 25.0,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: size.height / 40),
                        Text(
                          'If you are completely new to houseplants then Ficus is a brilliant first plant to adopt, it is very easy to look after and won\'t occupy too much space.',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12.0,
                            height: 1.8,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          height: size.height / 20,
                        ),
                        Text(
                          'Details',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Plant height: 35-45cm;\nNursery pot width: 12cm',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.black54,
                            height: 1.8,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
