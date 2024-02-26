import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tdd/src/Features/members/domain/entities/customer_entity.dart';
import 'package:tdd/src/Features/members/domain/usecases/get_all_customer.dart';
import 'package:tdd/src/core/network/logger.dart';

part 'customer_event.dart';
part 'customer_state.dart';

class CustomerBloc extends Bloc<CustomerEvent, CustomerState> {
  final GetAllCustomerUseCase getAllCustomerUseCase;
  CustomerBloc({required this.getAllCustomerUseCase})
      : super(CustomerInitial()) {
    // CALL ALL CUSTOMERS
    on<GetAllCustomer>(onGetAllCustomers);
  }

  void onGetAllCustomers(
      GetAllCustomer event, Emitter<CustomerState> emit) async {
    emit(CustomerLoading());
    final result = await getAllCustomerUseCase.call();
    result.fold((failure) {
      emit(CustomerFailure(message: failure.message));
    }, (data) {
      emit(CustomerLoaded(customers: data));
    });
  }
}
