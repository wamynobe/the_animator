import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../const/slide_transition_direction.dart';

part 'ta_slide_transition_state.dart';
part 'ta_slide_transition_cubit.freezed.dart';

class TASlideTransitionCubit extends Cubit<TASlideTransitionState> {
  TASlideTransitionCubit()
      : super(const TASlideTransitionState(slideTransitionDirection: {}));

  void onSlideTransitionDirectionChanged({
    required SlideTransitionDirection direction,
    required Offset offset,
    required bool isAdd,
  }) {
    final oppositeDirection = _getOppositeDirection(direction);
    final oppositeDirectionOffset =
        state.slideTransitionDirection[oppositeDirection];
    if (oppositeDirectionOffset != null) {
      _removeOppositeDirectionOffset(
        opppositeDirection: oppositeDirection,
      );
    }
    late final Map<SlideTransitionDirection, Offset>
        newSlideTransitionDirection;
    if (isAdd) {
      newSlideTransitionDirection = Map<SlideTransitionDirection, Offset>.from(
        state.slideTransitionDirection,
      )..update(
          direction,
          (value) => offset,
          ifAbsent: () => offset,
        );
    } else {
      newSlideTransitionDirection = Map<SlideTransitionDirection, Offset>.from(
        state.slideTransitionDirection,
      )..remove(direction);
    }

    emit(
      TASlideTransitionState(
        slideTransitionDirection: newSlideTransitionDirection,
      ),
    );
  }

  /// Returns the opposite direction of the given direction.
  SlideTransitionDirection _getOppositeDirection(
    SlideTransitionDirection direction,
  ) {
    switch (direction) {
      case SlideTransitionDirection.left:
        return SlideTransitionDirection.right;
      case SlideTransitionDirection.right:
        return SlideTransitionDirection.left;
      case SlideTransitionDirection.top:
        return SlideTransitionDirection.bottom;
      case SlideTransitionDirection.bottom:
        return SlideTransitionDirection.top;
    }
  }

  /// Returns the opposite direction offset of the given direction.
  Offset? _getOppositeDirectionOffset(SlideTransitionDirection direction) {
    switch (direction) {
      case SlideTransitionDirection.left:
        return state.slideTransitionDirection[SlideTransitionDirection.right];
      case SlideTransitionDirection.right:
        return state.slideTransitionDirection[SlideTransitionDirection.left];
      case SlideTransitionDirection.top:
        return state.slideTransitionDirection[SlideTransitionDirection.bottom];
      case SlideTransitionDirection.bottom:
        return state.slideTransitionDirection[SlideTransitionDirection.top];
    }
  }

  /// Removes the opposite direction offset from the state.
  void _removeOppositeDirectionOffset({
    required SlideTransitionDirection opppositeDirection,
  }) {
    final newSlideTransitionDirection =
        Map<SlideTransitionDirection, Offset>.from(
      state.slideTransitionDirection,
    )..remove(opppositeDirection);
    emit(
      TASlideTransitionState(
        slideTransitionDirection: newSlideTransitionDirection,
      ),
    );
  }
}
