import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_spotify_ui/data/data.dart';

part 'track_state.dart';

class TrackCubit extends Cubit<TrackState> {
  TrackCubit() : super(TrackState());

  play(Song track) {
    emit(TrackState(track: track));
  }
}
