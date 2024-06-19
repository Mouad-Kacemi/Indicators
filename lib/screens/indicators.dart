import 'package:flutter/material.dart';
import 'package:indicators/helpers/ColorsSys.dart';
import 'package:indicators/helpers/Strings.dart';
import 'package:indicators/widgets/makepage.dart';

class Indicators extends StatefulWidget {
  const Indicators({super.key});
  static const route = '/indicators';

  @override
  State<Indicators> createState() => _HomePageState();
}

class _HomePageState extends State<Indicators> {
  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).colorScheme.background,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20, top: 20),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginScreen()));
                },
                child: Text("Skip",
                    style: TextStyle(
                        color: ColorSys.primary,
                        fontSize: 18,
                        fontWeight: FontWeight.w600)),
              ),
            )
          ]),
      body: Stack(alignment: Alignment.bottomCenter, children: <Widget>[
        GestureDetector(
          onHorizontalDragEnd: (details) {
            if (details.primaryVelocity! > 0) {
              // Swipe right (go to the previous page)
              _pageController.previousPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            } else if (details.primaryVelocity! < 0) {
              // Swipe left (go to the next page)
              _pageController.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            }
          },

          // ...

          child: PageView(
            onPageChanged: (int page) {
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            children: <Widget>[
              makePage(
                  image: "assets/images/first.png",
                  title: Strings.stepOneTitle,
                  content: Strings.stepOneContent),
              makePage(
                  reverse: true,
                  image: "assets/images/second.png",
                  title: Strings.stepTwoTitle,
                  content: Strings.stepTwoContent),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildIndicator(),
          ),
        )
      ]),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 8,
      width: isActive ? 30 : 8,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: ColorSys.secoundry, borderRadius: BorderRadius.circular(5)),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 2; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }
}
