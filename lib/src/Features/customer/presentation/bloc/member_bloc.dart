// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:tdd/src/Features/members/domain/entities/customer_entity.dart';
// import 'package:tdd/src/Features/members/domain/usecases/get_member.dart';

// part 'member_event.dart';
// part 'member_state.dart';

// class MemberBloc extends Bloc<MemberEvent, MemberState> {
//   final GetMemberUseCase _getMemberUseCase;
//   MemberBloc(this._getMemberUseCase) : super(MemberInitial()) {
//     //GET MEMBER EVENT HANDLER
//     on<GetMember>((event, emit) async {
//       emit(MemberLoading());
//       final result = await _getMemberUseCase.execute(event.id);
//       result.fold((failure) {
//         emit(MemberLoadFailure(message: failure.message));
//       }, (data) {
//         emit(MemberLoaded(entity: data));
//       });
//     });
//   }
// }
