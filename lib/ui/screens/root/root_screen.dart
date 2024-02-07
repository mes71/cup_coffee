import 'package:cup_coffee/presenter/bloc/root/root_cubit.dart';
import 'package:cup_coffee/presenter/route/routes.dart';
import 'package:cup_coffee/ui/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size.toString());
    return BlocBuilder<RootCubit, RootState>(
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: myPages[state.currentPage],
          bottomNavigationBar: BottomNavigationBar(
            enableFeedback: true,
            currentIndex: state.currentPage,
            elevation: 0,
            selectedItemColor: selectedIconColor,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.shifting,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            onTap: (value) => context.read<RootCubit>().selectPage(value),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home),
                  activeIcon: Icon(CupertinoIcons.house_fill),
                  label: "Home",
                  tooltip: "Home"),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined),
                activeIcon: Icon(Icons.shopping_bag_sharp),
                label: "Basket",
                tooltip: "Basket",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.location_on_outlined),
                activeIcon: Icon(Icons.location_on_sharp),
                label: "location",
                tooltip: "location",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.heart),
                activeIcon: Icon(CupertinoIcons.heart_fill),
                label: "Favorite",
                tooltip: "Favorite",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person),
                activeIcon: Icon(CupertinoIcons.person_fill),
                label: "Me",
                tooltip: "Me",
              ),
            ],
          ),
        );
      },
    );
  }
}
