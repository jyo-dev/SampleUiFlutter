import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:imageview360/imageview360.dart';
import 'package:riafytest/Utilities/styles.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int currentIndex = 0;

  List<ImageProvider> imageList = List<ImageProvider>();
  bool autoRotate = true;
  int rotationCount = 2;
  int swipeSensitivity = 2;
  bool allowSwipeToRotate = true;
  RotationDirection rotationDirection = RotationDirection.anticlockwise;
  Duration frameChangeDuration = Duration(milliseconds: 50);
  bool imagePrecached = false;

  @override
  void initState() {
    //* To load images from assets after first frame build up.
    WidgetsBinding.instance
        .addPostFrameCallback((_) => updateImageList(context));
    super.initState();
  }

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white.withAlpha(55),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Container(
                  child: Column(children: [
                    Container(
                      height: 20.0,
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.keyboard_arrow_left,
                            color: Colors.black,
                            size: 30.0,
                          ),
                          Icon(
                            Icons.sentiment_satisfied_alt,
                            color: Colors.black,
                            size: 30.0,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 50.0),
                      child: Column(
                        children: [
                          Container(
                            child: Center(
                              child: ClayContainer(
                                color: Colors.white,
                                height: size.height * 0.55,
                                width: size.width * 0.85,
                                borderRadius: 50.0,
                                child: (imagePrecached == true)
                                    ? Padding(
                                      padding: const EdgeInsets.only(top:75.0),
                                      child: ImageView360(
                                          key: UniqueKey(),
                                          imageList: imageList,
                                          autoRotate: autoRotate,
                                          rotationCount: rotationCount,
                                          rotationDirection:
                                              RotationDirection.anticlockwise,
                                          frameChangeDuration:
                                              Duration(milliseconds: 30),
                                          swipeSensitivity: swipeSensitivity,
                                          allowSwipeToRotate: allowSwipeToRotate,
                                          onImageIndexChanged:
                                              (currentImageIndex) {
                                            print(
                                                "currentImageIndex: $currentImageIndex");
                                          },
                                        ),
                                    )
                                    : Text("Loading image...",style: kSubtitleStyle,),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Moju Plant',
                                      style: kSubtitleStyle,
                                    ),
                                    Text(
                                      '\$250',
                                      style: kSubtitleStylecart,
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 40.0,
                                  width: 100.0,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Cart',
                                        style: kSubtitleStylecartwhite,
                                      ),
                                      Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 20.0,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 20, left: 20),
                            child: Text(
                              'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..',
                              style: kSubtitleStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            SlidingUpPanel(
              minHeight: 80,
              maxHeight: size.height * 0.80,
              color: Colors.black,
              renderPanelSheet: false,
              panel: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: size.width,
                  height: 80,
                  child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      CustomPaint(
                        size: Size(size.width, 80),
                        painter: BNBCustomPainter(),
                      ),
                      Center(
                        heightFactor: 0.6,
                        child: FloatingActionButton(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.keyboard_arrow_up,
                              color: Colors.black,
                            ),
                            elevation: 0.1,
                            onPressed: () {}),
                      ),
                      Center(
                        child: Container(
                          padding: EdgeInsets.only(top: 45),
                          child: Text(
                            'Buy now',
                            style: kSubtitleStylecartwhitesmall,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 30,
                        child: Container(
                          height: 55,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void updateImageList(BuildContext context) async {
    for (int i = 1; i <= 52; i++) {
      imageList.add(AssetImage('images/$i.png'));
      //* To precache images so that when required they are loaded faster.
      await precacheImage(AssetImage('images/$i.png'), context);
    }
    setState(() {
      imagePrecached = true;
    });
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 0); // Start
    path.quadraticBezierTo(size.width * 0.0, 20, size.width * 0.40, 20);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 20, size.width * 0.65, 20);
    path.quadraticBezierTo(size.width * 0.90, 20, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
