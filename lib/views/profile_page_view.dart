import 'package:flutter/material.dart';

class ProfilePageView extends StatefulWidget {
  const ProfilePageView({super.key});

  @override
  State<ProfilePageView> createState() => _ProfilePageViewState();
}

class _ProfilePageViewState extends State<ProfilePageView> {
  var screenHeight;
  var screenWidth;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: ListView(children: [
        profileHeader(),
        SizedBox(
          height: 10,
        ),
        detailsBox()
      ]),
    );
  }

  Widget profileHeader() {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: screenHeight / 4,
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.camera_alt_outlined),
                  Text(' Add Cover Photo'),
                ],
              ),
            ),
            Container(
              height: 130,
              color: Colors.white,
            ),
          ],
        ),
        Positioned(
          top: screenHeight / 4 - 60,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisSize: MainAxisSize.max,
              children: [
                CircleAvatar(
                    backgroundColor: Colors.transparent,
                    maxRadius: 50,
                    child: SizedBox(
                        width: 120,
                        height: 120,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/cat_pic.jpg',
                            fit: BoxFit.fill,
                          ),
                        ))),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'Shashank Singh',
                  style: TextStyle(fontSize: 22),
                ),
                Row(
                  children: [
                    rectangularButton(Colors.blue, 'Add to story'),
                    IconButton(
                        onPressed: (() {}), icon: const Icon(Icons.more_horiz))
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget detailsBox() {
    return Container(
      height: 300,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Details",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
                "Studied at Ramkrishna Mahato Government Engineering College, Purulia"),
            SizedBox(
              height: 5,
            ),
            Text(
                "Studied at Ramkrishna Mahato Government Engineering College, Purulia"),
            SizedBox(
              height: 5,
            ),
            Text(
                "Studied at Ramkrishna Mahato Government Engineering College, Purulia")
          ],
        ),
      ),
    );
  }

  Widget rectangularButton(Color color, String buttonText) {
    return MaterialButton(
      minWidth: screenWidth - 60,
      color: color,
      onPressed: (() {
        debugPrint('Button Tapped !');
      }),
      child: Row(
        children: [const Icon(Icons.add_circle), Text(buttonText)],
      ),
    );
  }
}
