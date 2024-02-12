import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../l10n/l10n.dart';
import '../bloc/ta_slide_transition/ta_slide_transition_cubit.dart';
import '../const/slide_transition_direction.dart';
import 'checkbox_item.dart';
import 'expanded_container.dart';
import 'second_page.dart';

class TASlideTransition extends StatelessWidget {
  const TASlideTransition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final mapDirectionToName = {
      SlideTransitionDirection.left: l10n.left,
      SlideTransitionDirection.right: l10n.right,
      SlideTransitionDirection.top: l10n.top,
      SlideTransitionDirection.bottom: l10n.bottom,
    };
    return ExpandableContainer(
      label: l10n.slideTransition,
      content: BlocBuilder<TASlideTransitionCubit, TASlideTransitionState>(
        builder: (context, state) {
          final shouldEnableNavigation =
              state.slideTransitionDirection.isNotEmpty;
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ...SlideTransitionDirection.values.map(
                (direction) {
                  return CheckboxItem(
                    isChecked:
                        state.slideTransitionDirection[direction] != null,
                    label:
                        '${l10n.from} ${mapDirectionToName[direction] ?? ''}',
                    onChanged: ({
                      required bool value,
                    }) {
                      context
                          .read<TASlideTransitionCubit>()
                          .onSlideTransitionDirectionChanged(
                            direction: direction,
                            offset: _getOffsetFromDirection(direction),
                            isAdd: value,
                          );
                    },
                  );
                },
              ),
              ElevatedButton(
                onPressed: shouldEnableNavigation
                    ? () {
                        Navigator.of(context).push<void>(
                          _createRouteWithSlideTransition(
                            context.read<TASlideTransitionCubit>(),
                          ),
                        );
                      }
                    : null,
                child: Row(
                  children: [
                    Text(l10n.goToSecondPage),
                    const Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Offset _getOffsetFromDirection(SlideTransitionDirection direction) {
    switch (direction) {
      case SlideTransitionDirection.left:
        return const Offset(-1, 0);
      case SlideTransitionDirection.right:
        return const Offset(1, 0);
      case SlideTransitionDirection.top:
        return const Offset(0, -1);
      case SlideTransitionDirection.bottom:
        return const Offset(0, 1);
    }
  }

  Route<void> _createRouteWithSlideTransition(
    TASlideTransitionCubit taSlideTransitionCubit,
  ) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return const SecondPage();
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final slideTransitionDirection =
            taSlideTransitionCubit.state.slideTransitionDirection;
        final hasSecondaryAnimation = slideTransitionDirection.length > 1;

        // if there are 2 directions, we need to create a slide transition with
        // combination of 2 directions
        // if there is only 1 direction,
        // we can create a slide transition directly
        // since we already checked slideTransitionDirection is not empty
        // we do not need to check empty in else block
        if (hasSecondaryAnimation) {
          final listDirections = slideTransitionDirection.keys;
          // because the list has only 2 elements
          final firstOffset = slideTransitionDirection[listDirections.first]!;
          final secondOffset = slideTransitionDirection[listDirections.last]!;
          final firstTween = Tween(
            begin: firstOffset,
            end: Offset.zero,
          );
          final offsetAnimation = animation.drive(firstTween);
          final secondTween = Tween(
            begin: secondOffset,
            end: Offset.zero,
          );
          final secondaryAnimation = animation.drive(secondTween);

          return SlideTransition(
            position: offsetAnimation,
            child: SlideTransition(
              position: secondaryAnimation,
              child: child,
            ),
          );
        } else {
          final direction = slideTransitionDirection.keys.first;
          final offset = slideTransitionDirection[direction]!;
          final tween = Tween(
            begin: offset,
            end: Offset.zero,
          );
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        }
      },
    );
  }
}
