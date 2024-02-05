import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd/src/Features/members/presentation/bloc/member_bloc.dart';
import 'package:tdd/src/Features/members/presentation/pages/member_page.dart';
import 'package:tdd/src/core/injection_container.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => locator<MemberBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'Member TDD',
        home: MemberPage(),
      ),
    );
  }
}
