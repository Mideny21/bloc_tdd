// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'member_bloc.dart';

sealed class MemberState extends Equatable {
  const MemberState();

  @override
  List<Object> get props => [];
}

class MemberInitial extends MemberState {}

class MemberLoading extends MemberState {}

class MemberLoaded extends MemberState {
  final MemberEntity entity;

  const MemberLoaded({required this.entity});
  @override
  List<Object> get props => [entity];
}

class MemberLoadFailure extends MemberState {
  final String message;
  const MemberLoadFailure({required this.message});

  @override
  List<Object> get props => [message];
}
