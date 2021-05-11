import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/data/data.dart';
import 'package:flutter_spotify_ui/widgets/widgets.dart';

class PlaylistScreen extends StatefulWidget {
  final Playlist playlist;

  PlaylistScreen({required this.playlist});

  @override
  _PlaylistScreenState createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Color(0xFFAF1018),
        elevation: 0,
        leadingWidth: 140.0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                customBorder: const CircleBorder(),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.black26,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.chevron_left,
                      size: 28.0,
                    ),
                  ),
                ),
                onTap: () {},
              ),
              SizedBox(width: 16.0),
              InkWell(
                customBorder: const CircleBorder(),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.black26,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.chevron_right,
                      size: 28.0,
                    ),
                  ),
                ),
                onTap: () {},
              )
            ],
          ),
        ),
        actions: [
          TextButton.icon(
            style: TextButton.styleFrom(
                primary: Theme.of(context).iconTheme.color),
            icon: const Icon(
              Icons.account_circle_outlined,
              size: 30.0,
            ),
            label: const Text('Ismayil Ismayilov'),
            onPressed: () {},
          ),
          const SizedBox(width: 8.0),
          IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(
                Icons.keyboard_arrow_down,
                size: 30.0,
              ),
              onPressed: () {}),
          const SizedBox(width: 20.0),
        ],
      ),
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xFFAF1018),
                Theme.of(context).backgroundColor
              ],
                  stops: [
                0,
                0.3
              ])),
          child: Scrollbar(
            isAlwaysShown: true,
            controller: _scrollController,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              controller: _scrollController,
              children: [
                PlaylistHeader(playlist: widget.playlist),
                TracksList(tracks: widget.playlist.songs),
              ],
            ),
          )),
    );
  }
}
