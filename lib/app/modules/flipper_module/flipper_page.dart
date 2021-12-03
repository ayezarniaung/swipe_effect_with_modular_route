import 'package:flutter/material.dart';
import 'package:page_flip_builder/page_flip_builder.dart';

class FlipperPage extends StatelessWidget {
  const FlipperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return PageFlipBuilder(
            frontBuilder: (BuildContext context) => Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.88,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: const BoxDecoration(color: Colors.green),
              ),
            ),
            backBuilder: (BuildContext context) => Center(
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.88,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: const BoxDecoration(color: Colors.red),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
