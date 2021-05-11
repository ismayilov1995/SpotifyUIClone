import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/data/data.dart';

class PlaylistHeader extends StatelessWidget {
  final Playlist playlist;

  PlaylistHeader({required this.playlist});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              playlist.imageURL,
              height: 200.0,
              width: 200.0,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16.0),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('PLAYLIST',
                    style: Theme.of(context)
                        .textTheme
                        .overline!
                        .copyWith(fontSize: 12.0)),
                SizedBox(height: 12.0),
                Text(playlist.name,
                    style: Theme.of(context).textTheme.headline2),
                SizedBox(height: 16.0),
                Text(playlist.description,
                    style: Theme.of(context).textTheme.subtitle1),
                SizedBox(height: 16.0),
                Text(
                  'Created by ${playlist.creator} •'
                  '${playlist.songs.length} songs, ${playlist.duration}',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ))
          ],
        ),
        SizedBox(height: 20.0),
        _PlaylistButtons(followers: playlist.followers),
      ],
    );
  }
}

class _PlaylistButtons extends StatelessWidget {
  final String followers;

  _PlaylistButtons({required this.followers});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          child: Text('PLAY'),
          style: TextButton.styleFrom(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 48.0),
            shape: StadiumBorder(),
            backgroundColor: Theme.of(context).accentColor,
            primary: Theme.of(context).iconTheme.color,
            textStyle: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(fontSize: 12.0, letterSpacing: 2.0),
          ),
          onPressed: () {},
        ),
        IconButton(
            icon: const Icon(Icons.favorite_border),
            iconSize: 30.0,
            onPressed: () {}),
        IconButton(
            icon: const Icon(Icons.more_horiz),
            iconSize: 30.0,
            onPressed: () {}),
        const Spacer(),
        Text(
          'FOLLOWERS\n$followers',
          style: Theme.of(context).textTheme.overline!.copyWith(fontSize: 12.0),
          textAlign: TextAlign.right,
        )
      ],
    );
  }
}
