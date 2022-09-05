part of 'expense_form_bloc.dart';

@freezed
class ExpenseFormState with _$ExpenseFormState {
  const factory ExpenseFormState.initial() = _Initial;
  const factory ExpenseFormState.loadInProgress() = _LoadInProgress;
}