part of 'explore_page_bloc.dart';

@freezed
class ExplorePageEvent with _$ExplorePageEvent {
  const factory ExplorePageEvent.started() = _Started;
  const factory ExplorePageEvent.search({required String query}) = _Search;
  const factory ExplorePageEvent.refreshResult({required String query}) =
      _RefreshResult;
}
