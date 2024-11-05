import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartapp/global_core/cubits/widgets_helper/widgets_helper_cubit.dart';
import 'package:smartapp/src/home/presentation/screens/pages/home_page.dart';
import 'package:smartapp/src/home/presentation/screens/pages/like_page.dart';
import 'package:smartapp/src/home/presentation/screens/pages/profile_page.dart';
import 'package:smartapp/src/home/presentation/screens/pages/schedule_page.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final pages = [
    const HomePage(),
    LikePage(),
    const SchedulePage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WidgetsHelperCubit<int>>(
      create: (context) => WidgetsHelperCubit<int>(0),
      child: BlocBuilder<WidgetsHelperCubit<int>, int>(
        builder: (context, currentPage) {
          return Scaffold(
            backgroundColor: const Color(0xFFF2F2F2),
            body: IndexedStack(
              index: currentPage,
              children: pages,
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              // showSelectedLabels: false,
              // showUnselectedLabels: false,
              currentIndex: currentPage,
              onTap: (page) => context.read<WidgetsHelperCubit<int>>().onUpdateState(page),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: 'Likes',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month),
                  label: 'Schedule',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_rounded),
                  label: 'Profile',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
