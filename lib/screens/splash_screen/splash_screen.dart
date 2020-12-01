import 'package:auto_route/auto_route.dart';
import 'package:bloc_calculator/blocs/vector_sheet/vector_sheet_bloc.dart';
import 'package:bloc_calculator/routes/router.gr.dart';
import 'package:bloc_calculator/utils/vector_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:bloc_calculator/utils/vector_group.dart';

class SplashScreen extends HookWidget {
  //!should be singleton / provider / service

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 800),
    );

    controller.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        await Future.delayed(const Duration(milliseconds: 500),
            () => ExtendedNavigator.of(context).push(Routes.calculatorScreen));
      }
    });

    return BlocProvider<VectorSheetBloc>(
      create: (_) => VectorSheetBloc()..add(InitializeSheet('splash')),
      child: BlocBuilder<VectorSheetBloc, VectorSheetState>(
          builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: SizedBox.expand(
              child: Center(
                child: state is SheetLoading
                    ? const CircularProgressIndicator()
                    : AspectRatio(
                        aspectRatio: (state as SheetReady)
                            .vectorSheet
                            .size
                            .aspectRatio, //!
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            final group = (state as SheetReady).vectorSheet;
                            final scaleFactor =
                                constraints.biggest.width / group.size.width;
                            group.scale(
                                scaleFactor); //! fixme, shouldnt be rescaling on every rebuilt!!
                            controller.forward(); //!
                            return Stack(
                              overflow: Overflow.visible,
                              children: [
                                //Container(color: Colors.yellow),
                                StaggerVectorAnimation(
                                  element: group.elementMap['letter_j'],
                                  controller: controller,
                                  beginOffset: const Offset(-200, 70),
                                  interval: const Interval(0.0, 0.4,
                                      curve: Curves.easeOut),
                                ),
                                StaggerVectorAnimation(
                                  element: group.elementMap['letter_u'],
                                  controller: controller,
                                  beginOffset: const Offset(-150, -20),
                                  interval: const Interval(0.0, 0.5,
                                      curve: Curves.easeOut),
                                ),
                                StaggerVectorAnimation(
                                  element: group.elementMap['letter_l'],
                                  controller: controller,
                                  beginOffset: const Offset(0, -300),
                                  interval: const Interval(0.0, 0.6,
                                      curve: Curves.easeOut),
                                ),
                                StaggerVectorAnimation(
                                  element: group.elementMap['letter_i'],
                                  controller: controller,
                                  beginOffset: const Offset(0, 300),
                                  interval: const Interval(0.0, 0.6,
                                      curve: Curves.easeOut),
                                ),
                                StaggerVectorAnimation(
                                  element: group.elementMap['letter_e'],
                                  controller: controller,
                                  beginOffset: const Offset(200, -500),
                                  interval: const Interval(0.0, 0.5,
                                      curve: Curves.easeOut),
                                ),

                                // numbers and operators
                                StaggerVectorAnimation(
                                  element: group.elementMap['number_one'],
                                  controller: controller,
                                  beginOffset: const Offset(-300, 500),
                                  interval: const Interval(0.6, 0.7,
                                      curve: Curves.easeOut),
                                ),
                                StaggerVectorAnimation(
                                  element: group.elementMap['symbol_multiply'],
                                  controller: controller,
                                  beginOffset: const Offset(-150, -500),
                                  interval: const Interval(0.65, 0.75,
                                      curve: Curves.easeOut),
                                ),
                                StaggerVectorAnimation(
                                  element: group.elementMap['number_two'],
                                  controller: controller,
                                  beginOffset: const Offset(-400, 500),
                                  interval: const Interval(0.7, 0.8,
                                      curve: Curves.easeOut),
                                ),
                                StaggerVectorAnimation(
                                  element: group.elementMap['symbol_add'],
                                  controller: controller,
                                  beginOffset: const Offset(500, 400),
                                  interval: const Interval(0.75, 0.85,
                                      curve: Curves.easeOut),
                                ),
                                StaggerVectorAnimation(
                                  element: group.elementMap['number_three'],
                                  controller: controller,
                                  beginOffset: const Offset(400, -500),
                                  interval: const Interval(0.8, 0.9,
                                      curve: Curves.easeOut),
                                ),

                                //equals sign
                                StaggerVectorAnimation(
                                  element:
                                      group.elementMap['symbol_equals_bottom'],
                                  controller: controller,
                                  beginOffset: const Offset(-400, 0),
                                  interval: const Interval(0.6, 1.0,
                                      curve: Curves.easeOut),
                                ),
                                StaggerVectorAnimation(
                                  element:
                                      group.elementMap['symbol_equals_top'],
                                  controller: controller,
                                  beginOffset: const Offset(400, 0),
                                  interval: const Interval(0.6, 1.0,
                                      curve: Curves.easeOut),
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
      }),
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
    return Positioned(
      left: position.value.dx,
      top: position.value.dy,
      child: VectorHero(element: element),
    );
  }
}

//AirDropTransition (beginPosition, endPosition, elevatedScaleFactor, curvedPathPercentage (0 = straight, 100 = maxCurve related to travel distance))
//SlideInTransition (endPosition, )
