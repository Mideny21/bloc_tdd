import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tdd/src/Features/customer/domain/entities/customer_entity.dart';
import 'package:tdd/src/Features/customer/presentation/bloc/customer_bloc.dart';
import 'package:tdd/src/Features/customer/presentation/pages/customer_page.dart';

class MockCustomerBloc extends MockBloc<CustomerEvent, CustomerState>
    implements CustomerBloc {}

void main() {
  late MockCustomerBloc mockCustomerBloc;

  setUp(() {
    mockCustomerBloc = MockCustomerBloc();
    //  mockCustomerBloc.add(GetAllCustomer());
    //  when(() => mockCustomerBloc.add(GetAllCustomer())).thenAnswer((_) => null);
  });

  var _listcustomers = [
    CustomerEntity(
        id: 1,
        username: 'JohnDoe',
        email: 'mwaikasu21@gmail.com',
        firstName: 'Raymond',
        lastName: 'Mwaikasu',
        address: 'Moshi',
        phone_number: "0678909090",
        created_at: '32324-342',
        updated_at: '4534-590385903'),
    CustomerEntity(
        id: 2,
        username: 'JohnDoe',
        email: 'mwaikasu21@gmail.com',
        firstName: 'Raymond',
        lastName: 'Mwaikasu',
        address: 'Moshi',
        phone_number: "0678909090",
        created_at: '32324-342',
        updated_at: '4534-590385903')
  ];

  Widget _makeTestableWidget(Widget body) {
    return BlocProvider<CustomerBloc>(
      create: (context) => mockCustomerBloc,
      child: MaterialApp(home: body),
    );
  }

  testWidgets('when page open state change from empty to loading',
      (testter) async {
    //ARRANGE
    when(() => mockCustomerBloc.state).thenReturn(CustomerInitial());

    //ACT
    await testter.pumpWidget(_makeTestableWidget(CustomerPage()));
    var keyPage = find.byKey(Key('customerPage'));
    expect(keyPage, findsOneWidget);
  });

  testWidgets('should show progess indicator when state is loading',
      (tester) async {
    //
    when(() => mockCustomerBloc.state).thenReturn(CustomerLoading());

    //act
    await tester.pumpWidget(_makeTestableWidget(CustomerPage()));

    //assert
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets(
      'should show widget contain member data when state is customerloaded',
      (tester) async {
    //
    when(() => mockCustomerBloc.state)
        .thenReturn(CustomerLoaded(customers: _listcustomers));

    //act
    await tester.pumpWidget(_makeTestableWidget(CustomerPage()));

    //assert
    expect(find.byKey(Key('customer_data')), findsOneWidget);
  });
}
