import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toy_1/presentation/home/home_page.dart';
import 'package:toy_1/presentation/location/location_page.dart';
import 'package:toy_1/presentation/my/my_page.dart';
import 'package:toy_1/presentation/root/root_viewmodel.dart';
import 'package:toy_1/presentation/shop/shop_page.dart';

class RootPage extends ConsumerStatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  ConsumerState createState() => _RootPageState();
}

class _RootPageState extends ConsumerState<RootPage> {

  final List<Widget> pages = [
    const HomePage(),
    const ShopPage(),
    const LocationPage(),
    const MyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[ref.watch(rootViewModelProvider).navigatorIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: ref.watch(rootViewModelProvider).navigatorIndex,
        onTap: (index) => ref.read(rootViewModelProvider.notifier).navigatorIndex = index,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined), label: 'Location'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My'),
        ],
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black87,
      ),

    );
  }
}
