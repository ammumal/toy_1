import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Placeholder(
            fallbackHeight: MediaQuery.of(context).size.height * 0.5,
          ),
        ),
        SliverMainAxisGroup(slivers: [
          // main banner
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
                child: Text('멤버별 게시물 모아보기', style: TextStyle(fontSize: 18),)),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 12),
            sliver: SliverToBoxAdapter(
              child: SizedBox(
                height: 400,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const Card(color: Colors.amberAccent),
                  separatorBuilder: (context, index) => const SizedBox(width: 8),
                  itemCount: 5,
                ),
              ),
            ),
          )
        ])
      ],
    );
  }
}
