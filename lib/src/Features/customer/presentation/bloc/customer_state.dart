// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'customer_bloc.dart';

sealed class CustomerState extends Equatable {
  const CustomerState();

  @override
  List<Object> get props => [];
}

class CustomerInitial extends CustomerState {}

class CustomerLoading extends CustomerState {}

class CustomerLoaded extends CustomerState {
  final List<CustomerEntity> customers;
  CustomerLoaded({required this.customers});
  @override
  List<Object> get props => [customers];
}

class CustomerFailure extends CustomerState {
  final String message;
  const CustomerFailure({required this.message});

  @override
  List<Object> get props => [message];
}
