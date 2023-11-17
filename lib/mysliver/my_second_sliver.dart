import 'package:flutter/material.dart';

class MySecondSliver extends StatelessWidget {
  const MySecondSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      //일반 위젯이 아니라 찢어진 조각들만 들어올 수 있음
      //슬리버에다 넣고싶으면 이렇게 넣어야됨
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            height: 500,
            color: Colors.red,
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          childCount: 5,
          (context, index) => Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
                height: 100, color: Colors.blue, child: Text("$index")),
          ),
        )),
      ],
    );
  }
}
