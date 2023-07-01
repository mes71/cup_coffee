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
                  text: TextSpan(
                      text: 'Get your ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.black87),
                      children: [
                        TextSpan(
                            text: 'Coffee \n',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: assetTextColor)),
                        TextSpan(
                            text: 'on one finger tap',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: Colors.black87)),
                      ]),
                ),
                CircleAvatar(
                  radius: 46,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    foregroundImage: AssetImage(Assets.imagesMe),
                    maxRadius: 45,
                    minRadius: 35,
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
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 1)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 1)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 1)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 1)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 1)),
                  filled: true,
                  fillColor: bgSearchBox),
            ),
          ),
          //endregion

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(
              "Popular Coffee",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          14.toHeight,
          SizedBox(
              height: 245,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                        padding: EdgeInsets.only(left: 20 , right: index==9 ? 20:0),
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
                                        offset: Offset(0, 2),
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
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              width: 255,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [Text("Cappuccino"), Text("\$550")],
                              ),
                            ),
                            4.toHeight,
                            Row(
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
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),

          Container(
            width: 125,

height: 250,          )
        ],
      ),
    );
  }
}
