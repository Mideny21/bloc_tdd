import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tdd/src/Features/members/domain/entities/member_entity.dart';
import 'package:tdd/src/Features/members/presentation/bloc/member_bloc.dart';
import 'package:tdd/src/Features/members/presentation/pages/member_page.dart';

class MockMemberBloc extends MockBloc<MemberEvent, MemberState>
    implements MemberBloc {}

void main() {
  late MockMemberBloc mockMemberBloc;

  setUp(() {
    mockMemberBloc = MockMemberBloc();
    // to get actual htpp response from server we add this line
    //  HttpOverrides.global = null;
  });

  Widget _makeTestableWidget(Widget body) {
    return BlocProvider<MemberBloc>(
      create: (context) => mockMemberBloc,
      child: MaterialApp(home: body),
    );
  }

  var memberentity = MemberEntity(
      id: 1,
      name: "John",
      position: "Engineer",
      createdAt: "2243:0433:43",
      updatedAt: "4324:SFSF:FS");
  testWidgets('text field should trigger state to change from empty to loading',
      (tester) async {
    //arrange
    when(() => mockMemberBloc.state).thenReturn(MemberInitial());
    //act
    await tester.pumpWidget(_makeTestableWidget(MemberPage()));
    var textField = find.byType(TextField);
    expect(textField, findsOneWidget);
    await tester.enterText(textField, 'Searching');
    await tester.pump();
    expect(find.text('Searching'), findsOneWidget);
  });

  testWidgets('should show progress indicator when state is loading',
      (tester) async {
    //arrange
    when(() => mockMemberBloc.state).thenReturn(MemberLoading());
    //act
    await tester.pumpWidget(_makeTestableWidget(MemberPage()));

    //assert
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets(
      'should show widget contain member data when state is memberloaded',
      (tester) async {
    //arrange
    when(() => mockMemberBloc.state)
        .thenReturn(MemberLoaded(entity: memberentity));
    //act
    await tester.pumpWidget(_makeTestableWidget(MemberPage()));

    //assert
    expect(find.byKey(const Key('member_data')), findsOneWidget);
  });
}
