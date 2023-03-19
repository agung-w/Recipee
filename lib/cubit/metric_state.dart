part of 'metric_cubit.dart';

@freezed
class MetricState with _$MetricState {
  const factory MetricState.initial() = _Initial;
  const factory MetricState.loaded(List<Metric?> metrics) = _Loaded;
  const factory MetricState.error(String message) = _Error;
}
