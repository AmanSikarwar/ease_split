import 'package:freezed_annotation/freezed_annotation.dart';

part 'spliter_failures.freezed.dart';

@freezed
class SpliterFailure with _$SpliterFailure {
  const factory SpliterFailure.empty({
    String? failedValue,
  }) = Empty;

  const factory SpliterFailure.insuffientPermission({
    String? failedValue,
  }) = InsuffientPermission;

  const factory SpliterFailure.unexpected({
    String? failedValue,
  }) = Unexpected;

  const factory SpliterFailure.unabletoCreate({
    String? failedValue,
  }) = UnabletoCreate;

  const factory SpliterFailure.unabletoUpdate({
    String? failedValue,
  }) = UnabletoUpdate;

  const factory SpliterFailure.unabletoDelete({
    String? failedValue,
  }) = UnabletoDelete;

  const factory SpliterFailure.invalidGroup({
    String? failedValue,
  }) = InvalidGroup;
}
