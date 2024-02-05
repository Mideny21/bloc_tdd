import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tdd/src/Features/members/presentation/bloc/member_bloc.dart';

class MemberPage extends StatelessWidget {
  const MemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Member")),
      body: Column(children: [
        TextField(
          onChanged: (value) {
            BlocProvider.of<MemberBloc>(context).add(GetMember(2));
          },
        ),
        BlocBuilder<MemberBloc, MemberState>(
          builder: (context, state) {
            if (state is MemberLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is MemberLoaded) {
              return Expanded(
                  child: Text(
                      key: const Key('member_data'), state.entity.name ?? ''));
            } else if (state is MemberLoadFailure) {
              return Center(child: Text(state.message));
            }
            return Container();
          },
        )
      ]),
    );
  }
}
