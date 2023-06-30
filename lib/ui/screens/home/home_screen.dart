import 'package:cup_coffee/generated/assets.dart';
import 'package:cup_coffee/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
          )
        ],
      ),
    );
  }
}
