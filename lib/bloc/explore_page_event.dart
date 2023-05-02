part of 'explore_page_bloc.dart';

@freezed
class ExplorePageEvent with _$ExplorePageEvent {
  const factory ExplorePageEvent.started({String? token}) = _Started;
  const factory ExplorePageEvent.search(
      {required String query, String? token}) = _Search;
  const factory ExplorePageEvent.refreshResult(
      {required String query, String? token}) = _RefreshResult;
}
