part of 'expense_form_bloc.dart';

@freezed
class ExpenseFormEvent with _$ExpenseFormEvent {
  const factory ExpenseFormEvent.initialized(
      Option<Expenditure> initialExpenseOption) = Initialized;
  const factory ExpenseFormEvent.nameChanged(String name) = NameChanged;
}
