import 'package:cup_coffee/generated/assets.dart';
import 'package:cup_coffee/ui/utils/app_colors.dart';
import 'package:cup_coffee/ui/utils/app_ex.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      maintainBottomViewPadding: true,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //region AppBar Home Page
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    maxLines: 2,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    text: const TextSpan(
                        text: 'Get your ',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 28,
                            color: Colors.black87),
                        children: [
                          TextSpan(
                              text: 'Coffee \n',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25,
                                  color: assetTextColor)),
                          TextSpan(
                              text: 'on one finger tap',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 28,
                                  color: Colors.black87)),
                        ]),
                  ),
                  const CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.red,
                    child: CircleAvatar(
                      foregroundImage: AssetImage(Assets.imagesMe),
                      radius: 27,
                    ),
                  )
                ],
              ),
            ),
            //endregion

            //region Search TextField
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                enabled: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.grey.shade400,
                    ),
                    hintText: "Search",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 1)),
                    filled: true,
                    fillColor: bgSearchBox),
              ),
            ),
            //endregion

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Popular Coffee",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            SizedBox(
                height: 245,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                          padding: EdgeInsets.only(
                              left: 20, right: index == 9 ? 20 : 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 261,
                                height: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade200,
                                          offset: const Offset(0, 2),
                                          blurRadius: 2,
                                          spreadRadius: 2)
                                    ],
                                    image: const DecorationImage(
                                        image:
                                            AssetImage(Assets.imagesCappochino),
                                        fit: BoxFit.cover)),
                              ),
                              14.toHeight,
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                width: 255,
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [Text("Cappuccino"), Text("\$550")],
                                ),
                              ),
                              4.toHeight,
                              const Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                  ),
                                  Text("Coffee cafe")
                                ],
                              )
                            ],
                          ),
                        ),
                    itemCount: 10)),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                "Nearest coffee shops",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            Container(
              height: 250,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    width: 177,
                    height: 200,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 177,
                            height: 154,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                  image: AssetImage(Assets.imagesCoffeeShop),
                                  fit: BoxFit.cover),
                              gradient: LinearGradient(
                                begin: Alignment(-0.00, -1.00),
                                end: Alignment(0, 1),
                                colors: [
                                  Colors.black.withOpacity(0),
                                  Colors.black
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 1,
                          top: 161,
                          child: Text(
                            'Asley coffee',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 104,
                          top: 0,
                          child: Container(
                            width: 73,
                            height: 30,
                            decoration: ShapeDecoration(
                              color: Colors.white.withOpacity(0.25),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 111,
                          top: 4,
                          child: Container(
                            width: 59,
                            height: 21,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 15,
                                  top: 0,
                                  child: Text(
                                    '1.5 km',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 185,
                          child: Container(
                            width: 93,
                            height: 15,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 15,
                                  top: 0,
                                  child: Text(
                                    '5.0/ 105 ratings',
                                    style: TextStyle(
                                      color: Color(0xFF9D9D9D),
                                      fontSize: 10,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 1.72,
                                  child: Container(
                                    width: 11,
                                    height: 11,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [],
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
                  Container(
                    width: 177,
                    height: 200,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 177,
                            height: 154,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                  image: AssetImage(Assets.imagesCoffeeShop),
                                  fit: BoxFit.cover),
                              gradient: LinearGradient(
                                begin: Alignment(-0.00, -1.00),
                                end: Alignment(0, 1),
                                colors: [
                                  Colors.black.withOpacity(0),
                                  Colors.black
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 1,
                          top: 161,
                          child: Text(
                            'Asley coffee',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 104,
                          top: 0,
                          child: Container(
                            width: 73,
                            height: 30,
                            decoration: ShapeDecoration(
                              color: Colors.white.withOpacity(0.25),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 111,
                          top: 4,
                          child: Container(
                            width: 59,
                            height: 21,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 15,
                                  top: 0,
                                  child: Text(
                                    '1.5 km',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 185,
                          child: Container(
                            width: 93,
                            height: 15,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 15,
                                  top: 0,
                                  child: Text(
                                    '5.0/ 105 ratings',
                                    style: TextStyle(
                                      color: Color(0xFF9D9D9D),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
