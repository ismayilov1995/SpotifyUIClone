import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spotify_ui/logic/track_cubit.dart';

class CurrentTrack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 84.0,
        width: double.infinity,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              _TrackInfo(),
            ],
          ),
        ));
  }
}

class _TrackInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentTrack = context.watch<TrackCubit>().state.track;
    if (currentTrack == null) return SizedBox.shrink();
    return Row(
      children: [
        Image.asset(
          'assets/lofigirl.jpg',
          height: 60.0,
          width: 60.0,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 12.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              currentTrack.title,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(width: 4.0),
            Text(
              currentTrack.artist,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: Colors.grey[300], fontSize: 12.0),
            ),
          ],
        ),
        IconButton(icon: Icon(Icons.favorite_border), onPressed: () {})
      ],
    );
  }
}
