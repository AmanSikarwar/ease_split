import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ease_split/src/domain/spliter/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_form_state.dart';
part 'expense_form_event.dart';
part 'expense_form_bloc.freezed.dart';

class ExpenseFormBloc extends Bloc<ExpenseFormEvent, ExpenseFormState> {
  ExpenseFormBloc() : super(const ExpenseFormState.initial()) {}
}
