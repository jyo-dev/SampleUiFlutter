import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:riafytest/Utilities/styles.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<ProductList> products = [
    ProductList(
        imgurl: "images/pot2.png",
        pname: "Wicker Cone",
        price: "\$235",
        imgurl2: "images/img.png",
        pname2: "Some Name",
        price2: "\$205",
        offer: ""
    ),
    ProductList(
        imgurl: "images/aloevera.png",
        pname: "Wicker Cone",
        price: "\$345",
        imgurl2: "images/img.png",
        pname2: "Some Name",
        price2: "\$275",
        offer: "-50%"
    ),
    ProductList(
        imgurl: "images/image_2.png",
        pname: "Hello",
        price: "\$213",
        imgurl2: "images/aloevera.png",
        pname2: "Some Name",
        price2: "\$225",
        offer: ""
    ),
    ProductList(
        imgurl: "images/feather1.png",
        pname: "Wicker Cone",
        price: "\$235",
        imgurl2: "images/img.png",
        pname2: "Some Name",
        price2: "\$205",
        offer: ""
    ),
    ProductList(
        imgurl: "images/image_3.png",
        pname: "Wicker Cone",
        price: "\$345",
        imgurl2: "images/img.png",
        pname2: "Some Name",
        price2: "\$275",
        offer: "-50%"
    ),
    ProductList(
        imgurl: "images/image_2.png",
        pname: "Hello",
        price: "\$213",
        imgurl2: "images/aloevera.png",
        pname2: "Some Name",
        price2: "\$225",
        offer: ""
    ),
    ProductList(
        imgurl: "images/img_main.png",
        pname: "Wicker Cone",
        price: "\$235",
        imgurl2: "images/img.png",
        pname2: "Some Name",
        price2: "\$205",
        offer: ""
    ),
    ProductList(
        imgurl: "images/image_3.png",
        pname: "Wicker Cone",
        price: "\$345",
        imgurl2: "images/pot2.png",
        pname2: "Some Name",
        price2: "\$275",
        offer: "-50%"
    ),
    ProductList(
        imgurl: "images/image_2.png",
        pname: "Hello",
        price: "\$213",
        imgurl2: "images/img.png",
        pname2: "Some Name",
        price2: "\$225",
        offer: ""
    ),
    ProductList(
        imgurl: "images/img_main.png",
        pname: "Wicker Cone",
        price: "\$235",
        imgurl2: "images/img.png",
        pname2: "Some Name",
        price2: "\$205",
        offer: ""
    ),
    ProductList(
        imgurl: "images/image_3.png",
        pname: "Wicker Cone",
        price: "\$345",
        imgurl2: "images/img.png",
        pname2: "Some Name",
        price2: "\$275",
        offer: "-50%"
    ),
    ProductList(
        imgurl: "images/image_2.png",
        pname: "Hello",
        price: "\$213",
        imgurl2: "images/img.png",
        pname2: "Some Name",
        price2: "\$225",
        offer: ""
    ),
  ];

  Widget checkvalue(String pr){
    if(pr.isEmpty)
      return Text('');
    else
      return Text(pr,style: kSubtitleStyleblacksmall,);
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          body: Container(
            child: Column(
              children: [
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
                        Icons.dashboard,
                        color: Colors.black,
                        size: 30.0,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  height: 90.0,
                  child: Row(
                    children: [
                      Text(
                        'Choose',
                        style: kSubtitleStyleHome,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Device',
                        style: kTitleStyle,
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClayContainer(
                        color: Colors.white,
                        height: 50,
                        width: 50,
                        borderRadius: 50,
                        curveType: CurveType.concave,
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 20.0,
                        ),
                      ),
                      ClayContainer(
                        color: Colors.white,
                        height: 50,
                        width: 50,
                        borderRadius: 50,
                        curveType: CurveType.none,
                        child: Icon(
                          Icons.filter_alt_outlined,
                          color: Colors.black,
                          size: 20.0,
                        ),
                      ),
                      ClayContainer(
                        color: Colors.white,
                        height: 50,
                        width: 150,
                        borderRadius: 50,
                        curveType: CurveType.convex,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: ClayText(
                                "Cart",
                                emboss: true,
                                style: kSubtitleStylecart,
                              ),
                            ),
                            ClayContainer(
                              emboss: true,
                              color: Colors.white,
                              height: 30,
                              width: 30,
                              borderRadius: 50,
                              child: Padding(
                                  padding:
                                  EdgeInsets.only(left: 10.0, top: 4.0),
                                  child: Text(
                                    '2',
                                    style: kSubtitleStylecart,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: MediaQuery
                                .of(context)
                                .size
                                .height,
                            width:MediaQuery
                                .of(context)
                                .size
                                .width ,
                            child: AnimationLimiter(
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: products.length,
                                itemBuilder: (BuildContext ctxt, int index) {
                                  return AnimationConfiguration.staggeredList(
                                    duration: const Duration(milliseconds: 375),
                                    position: index,
                                    child: SlideAnimation(
                                      verticalOffset: 50.0,
                                      child: FadeInAnimation(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.pushNamed(
                                                    context, '/third');
                                              },
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  ClayContainer(
                                                    height:
                                                    MediaQuery
                                                        .of(context)
                                                        .size
                                                        .height *
                                                        0.20,
                                                    width:
                                                    MediaQuery
                                                        .of(context)
                                                        .size
                                                        .width *
                                                        0.35,
                                                    color: Colors.white,
                                                    borderRadius: 50,
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsets.all(20),
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            padding: EdgeInsets
                                                                .only(
                                                                left: 60.0),
                                                            child: checkvalue(products[index].offer)
                                                          ),
                                                          Expanded(
                                                            child: Image(
                                                                image: AssetImage(
                                                                    products[
                                                                    index]
                                                                        .imgurl)),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 15.0),
                                                      child: Text(
                                                        products[index].pname,
                                                        style: kSubtitleStyle,
                                                      )),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 15.0),
                                                    child: Text(
                                                      products[index].price,
                                                      style: kSubtitleStylecart,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 60.0,
                                                ),
                                                ClayContainer(
                                                  height: MediaQuery
                                                      .of(context)
                                                      .size
                                                      .height *
                                                      0.20,
                                                  width: MediaQuery
                                                      .of(context)
                                                      .size
                                                      .width *
                                                      0.35,
                                                  color: Colors.white,
                                                  borderRadius: 50,
                                                  child: Padding(
                                                    padding: EdgeInsets.all(20),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                            padding: EdgeInsets
                                                                .only(
                                                                left: 60.0),
                                                            child: checkvalue(products[index].offer)
                                                        ),
                                                        Expanded(
                                                          child: Image(
                                                              image: AssetImage(
                                                                  products[
                                                                  index]
                                                                      .imgurl2)),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 15.0),
                                                  child: Text(
                                                    products[index].pname2,
                                                    style: kSubtitleStyle,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 15.0),
                                                  child: Text(
                                                    products[index].price2,
                                                    style: kSubtitleStylecart,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProductList {
  final String imgurl;
  final String pname;
  final String price;
  final String imgurl2;
  final String pname2;
  final String price2;
  final String offer;

  ProductList({
    this.imgurl,
    this.pname,
    this.price,
    this.imgurl2,
    this.pname2,
    this.price2,
    this.offer,
  });
}
