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
        children: [
          //region AppBar Home Page
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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

          Container(
            height: 350,
            padding: const EdgeInsets.fromLTRB(20, 30, 0, 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Popular Coffee",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                20.toHeight,
                Expanded(
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 261,
                                  height: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              Assets.imagesCappochino),
                                          fit: BoxFit.cover)),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,

                                  
                                  children: [Text("Cappuccino"),Text("\$550")],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined),
                                    Text("Coffee cafe")
                                  ],
                                )
                              ],
                            ),
                        separatorBuilder: (context, index) => 20.toWidth,
                        itemCount: 10))
              ],
            ),
          )
        ],
      ),
    );
  }
}
