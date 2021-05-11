part of 'track_cubit.dart';

class TrackState extends Equatable {
  final Song? track;

  const TrackState({this.track});

  @override
  List<Object?> get props => [track];
}