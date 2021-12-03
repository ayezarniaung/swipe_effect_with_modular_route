import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:page_flip_builder/page_flip_builder.dart';

class SwipperPage extends StatefulWidget {
  const SwipperPage({Key? key}) : super(key: key);

  @override
  State<SwipperPage> createState() => _SwipperPageState();
}

class _SwipperPageState extends State<SwipperPage> {
  List<String> imageList = [
    "assets/images/bio_practical.png",
    "assets/images/bio.png",
    "assets/images/chem_practical.png",
    "assets/images/chem.png",
    "assets/images/eco.png",
  ];

  List<String> textList = [
    "bio_practical",
    "bio",
    "chem_paractical",
    "chem",
    "eco",
  ];

  late CardController controller;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Swipper'),
        ),
        body: Center(
          child: TinderSwapCard(
            orientation: AmassOrientation.BOTTOM,
            swipeEdge: imageList.length.toDouble(),
            stackNum: imageList.length,
            swipeUp: true,
            swipeDown: true,
            totalNum: imageList.length,
            maxWidth: MediaQuery.of(context).size.width * 0.9,
            maxHeight: MediaQuery.of(context).size.width * 0.9,
            minWidth: MediaQuery.of(context).size.width * 0.8,
            minHeight: MediaQuery.of(context).size.width * 0.8,
            cardController: controller = CardController(),
            cardBuilder: (context, index) {
              return index == 4
                  ? AlertDialog(
                      title: const Text('Congratulations'),
                      content: SizedBox(
                        height: 100,
                        width: 200,
                        child: Column(
                          children: [
                            const Text('Are you ready to learn new lessons!'),
                            ElevatedButton(
                              onPressed: () {
                                Modular.to.navigate('/');
                              },
                              child: const Text('Next'),
                            ),
                          ],
                        ),
                      ),
                    )
                  : PageFlipBuilder(
                      frontBuilder: (BuildContext context) {
                        return Card(
                          child: Image.asset(imageList[index]),
                        );
                      },
                      backBuilder: (BuildContext context) {
                        return Card(
                          child: Center(
                            child: Text(textList[index]),
                          ),
                        );
                      },
                    );
            },
            swipeCompleteCallback:
                (CardSwipeOrientation orientation, int index) {},
          ),
        ),
      ),
    );
  }
}
