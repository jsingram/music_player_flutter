import 'package:flutter/material.dart';

class MusicPlayer extends StatefulWidget {
  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  double _sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/freedom_bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.chevron_left),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            "Song Title",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              width: 45.0,
                              height: 45.0,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      "assets/guitar_profile_photo.jpg"),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "Artist Name",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.list,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Column(
                    children: <Widget>[
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Colors.white12,
                          trackHeight: 3.0,
                          thumbColor: Colors.white,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 6.0),
                          overlayColor: Colors.purple.withAlpha(32),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 14.0),
                        ),
                        child: Slider(
                            value: _sliderValue,
                            onChanged: (value) {
                              setState(() {
                                _sliderValue = value;
                              });
                            }),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "2:34",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "4:13",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.skip_previous,
                          color: Colors.white,
                          size: 40.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 40.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.skip_next,
                          color: Colors.white,
                          size: 40.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
