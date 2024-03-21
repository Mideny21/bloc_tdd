import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd/src/Features/customer/domain/entities/customer_entity.dart';
import 'package:tdd/src/Features/customer/presentation/bloc/customer_bloc.dart';

import 'package:tdd/src/core/constant/constants.dart';
import 'package:tdd/src/core/network/api.dart';
import 'package:tdd/src/core/network/logger.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({super.key});

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<CustomerBloc>(context).add(GetAllCustomer());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Customer",
            key: Key('customerPage'),
          ),
          centerTitle: true),
      body: BlocBuilder<CustomerBloc, CustomerState>(
        builder: (context, state) {
          if (state is CustomerLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is CustomerLoaded) {
            return ListView.builder(
                key: Key('customer_data'),
                itemCount: state.customers.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final CustomerEntity _data = state.customers[index];
                  return Card(
                    child: ListTile(
                        title: Text(
                      '${_data.lastName} ${_data.firstName}',
                      style: TextStyle(color: Colors.black),
                    )),
                  );
                });
          } else if (state is CustomerFailure) {
            return Center(child: Text(state.message));
          }
          return Container();
        },
      ),
    );
  }
}
