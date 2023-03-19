import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ta_recipe_app/entities/metric.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/metric_services.dart';

part 'metric_state.dart';
part 'metric_cubit.freezed.dart';

class MetricCubit extends Cubit<MetricState> {
  MetricCubit() : super(const MetricState.initial());
  void getLists() async {
    ApiResult<List<Metric?>> metrics = await MetricServices().getMetrics();
    metrics.map(
        success: (result) => emit(MetricState.loaded(result.value)),
        failed: (_) =>
            emit(MetricState.error("metrics_get_list_error_message".tr())));
  }
}
