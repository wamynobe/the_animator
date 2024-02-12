import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/ta_slide_transition/ta_slide_transition_cubit.dart';
import '../widgets/second_page.dart';
import '../widgets/ta_silde_transition.dart';

class TheAnimatorRoute extends StatelessWidget {
  const TheAnimatorRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TASlideTransitionCubit(),
        ),
      ],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const TASlideTransition(),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(_createRouteWithFadeTransition());
            },
            child: const Text('Go to second page with Fade Transition'),
          ),
        ],
      ),
    );
  }

  Route<void> _createRouteWithFadeTransition() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return FadeTransition(
          opacity: animation,
          child: const SecondPage(),
        );
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }
}
