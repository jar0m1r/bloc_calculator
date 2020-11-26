import 'package:auto_route/auto_route.dart';
import 'package:bloc_calculator/routes/router.gr.dart';
import 'package:bloc_calculator/screens/splash_screen/splash_elements.dart';
import 'package:bloc_calculator/utils/vector_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:bloc_calculator/utils/vector_element.dart';

class SplashScreen extends HookWidget {
  final VectorElements elements =
      splashElements; //!should be singleton / provider / service

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 800),
    )..forward();

    controller.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        await Future.delayed(const Duration(milliseconds: 500),
            () => ExtendedNavigator.of(context).push(Routes.calculatorScreen));
      }
    });

    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Center(
            child: AspectRatio(
              aspectRatio: elements.size.aspectRatio,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final scaleFactor =
                      constraints.biggest.width / elements.size.width;
                  elements.scale(
                      scaleFactor); //! fixme, shouldnt be rescaling on every rebuilt!!
                  return Stack(
                    overflow: Overflow.visible,
                    children: [
                      //Container(color: Colors.yellow),
                      StaggerVectorAnimation(
                        element: elements.elementMap['letter_j'],
                        controller: controller,
                        beginOffset: const Offset(-200, 70),
                        interval:
                            const Interval(0.0, 0.4, curve: Curves.easeOut),
                      ),
                      StaggerVectorAnimation(
                        element: elements.elementMap['letter_u'],
                        controller: controller,
                        beginOffset: const Offset(-150, -20),
                        interval:
                            const Interval(0.0, 0.5, curve: Curves.easeOut),
                      ),
                      StaggerVectorAnimation(
                        element: elements.elementMap['letter_l'],
                        controller: controller,
                        beginOffset: const Offset(0, -300),
                        interval:
                            const Interval(0.0, 0.6, curve: Curves.easeOut),
                      ),
                      StaggerVectorAnimation(
                        element: elements.elementMap['letter_i'],
                        controller: controller,
                        beginOffset: const Offset(0, 300),
                        interval:
                            const Interval(0.0, 0.6, curve: Curves.easeOut),
                      ),
                      StaggerVectorAnimation(
                        element: elements.elementMap['letter_e'],
                        controller: controller,
                        beginOffset: const Offset(200, -500),
                        interval:
                            const Interval(0.0, 0.5, curve: Curves.easeOut),
                      ),

                      // numbers and operators
                      StaggerVectorAnimation(
                        element: elements.elementMap['number_one'],
                        controller: controller,
                        beginOffset: const Offset(-300, 500),
                        interval:
                            const Interval(0.6, 0.7, curve: Curves.easeOut),
                      ),
                      StaggerVectorAnimation(
                        element: elements.elementMap['symbol_multiply'],
                        controller: controller,
                        beginOffset: const Offset(-150, -500),
                        interval:
                            const Interval(0.65, 0.75, curve: Curves.easeOut),
                      ),
                      StaggerVectorAnimation(
                        element: elements.elementMap['number_two'],
                        controller: controller,
                        beginOffset: const Offset(-400, 500),
                        interval:
                            const Interval(0.7, 0.8, curve: Curves.easeOut),
                      ),
                      StaggerVectorAnimation(
                        element: elements.elementMap['symbol_add'],
                        controller: controller,
                        beginOffset: const Offset(500, 400),
                        interval:
                            const Interval(0.75, 0.85, curve: Curves.easeOut),
                      ),
                      StaggerVectorAnimation(
                        element: elements.elementMap['number_three'],
                        controller: controller,
                        beginOffset: const Offset(400, -500),
                        interval:
                            const Interval(0.8, 0.9, curve: Curves.easeOut),
                      ),

                      //equals sign
                      StaggerVectorAnimation(
                        element: elements.elementMap['symbol_equals_bottom'],
                        controller: controller,
                        beginOffset: const Offset(-400, 0),
                        interval:
                            const Interval(0.8, 1.0, curve: Curves.easeOut),
                      ),
                      StaggerVectorAnimation(
                        element: elements.elementMap['symbol_equals_top'],
                        controller: controller,
                        beginOffset: const Offset(400, 0),
                        interval:
                            const Interval(0.8, 1.0, curve: Curves.easeOut),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class StaggerVectorAnimation extends AnimatedWidget {
  final VectorElement element;
  final Animation<Offset> position;
  final Interval interval;

  final Offset beginOffset;

  StaggerVectorAnimation(
      {Key key,
      this.element,
      this.beginOffset,
      this.interval,
      AnimationController controller})
      : position = Tween<Offset>(
          begin: beginOffset + element.position,
          end: element.position,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: interval,
          ),
        ),
        super(key: key, listenable: controller);

  @override
  Widget build(BuildContext context) {
    print('position: ${position.value}');

    return Positioned(
      left: position.value.dx,
      top: position.value.dy,
      child: VectorWidget(
        element: element,
        size: element.size,
      ),
    );
  }
}

//AirDropTransition (beginPosition, endPosition, elevatedScaleFactor, curvedPathPercentage (0 = straight, 100 = maxCurve related to travel distance))
//SlideInTransition (endPosition, )
