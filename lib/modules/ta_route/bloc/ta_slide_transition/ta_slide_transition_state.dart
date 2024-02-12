part of 'ta_slide_transition_cubit.dart';

@freezed
class TASlideTransitionState with _$TASlideTransitionState {
  const factory TASlideTransitionState({
    required Map<SlideTransitionDirection, Offset> slideTransitionDirection,
  }) = _TASlideTransitionState;
}
