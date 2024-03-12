import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd/src/Features/customer/presentation/bloc/customer_bloc.dart';
import 'package:tdd/src/Features/customer/presentation/pages/customer_page.dart';
import 'package:tdd/src/core/injection_container.dart';

void main() async {
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CustomerBloc>(create: (_) => locator<CustomerBloc>()),
      ],
      child: MaterialApp(
        title: 'CUSTOMER TDD',
        home: CustomerPage(),
      ),
    );
  }
}
