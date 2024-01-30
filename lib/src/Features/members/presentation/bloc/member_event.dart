part of 'member_bloc.dart';

sealed class MemberEvent extends Equatable {
  const MemberEvent();

  @override
  List<Object> get props => [];
}

final class GetMember extends MemberEvent {
  final int id;
  const GetMember(this.id);
  @override
  List<Object> get props => [];
}
