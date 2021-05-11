import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/data/data.dart';

class TracksList extends StatelessWidget {
  final List<Song> tracks;

  TracksList({required this.tracks});

  @override
  Widget build(BuildContext context) {
    return DataTable(
        columns: const [
          DataColumn(label: Text('TITLE')),
          DataColumn(label: Text('ARTIST')),
          DataColumn(label: Text('ALBUM')),
          DataColumn(label: Icon(Icons.access_time)),
        ],
        rows: tracks.map((e) {
          return DataRow(cells: [
            DataCell(Text(e.title,
                style: TextStyle(color: Theme.of(context).iconTheme.color))),
            DataCell(Text(e.artist,
                style: TextStyle(color: Theme.of(context).iconTheme.color))),
            DataCell(Text(e.album,
                style: TextStyle(color: Theme.of(context).iconTheme.color))),
            DataCell(Text(e.duration,
                style: TextStyle(color: Theme.of(context).iconTheme.color))),
          ]);
        }).toList());
  }
}
