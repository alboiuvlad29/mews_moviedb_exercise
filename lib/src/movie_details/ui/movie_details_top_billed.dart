import 'package:flutter/material.dart';
import 'package:mews_moviedb_exercise/src/core/domain/cast.dart';
import 'package:mews_moviedb_exercise/src/core/domain/credits.dart';
import 'package:mews_moviedb_exercise/src/core/ui/headed_list_tile.dart';

import 'cast_list_tile.dart';

class TopBilledList extends StatelessWidget {
  const TopBilledList({
    Key? key,
    required this.credits,
  }) : super(key: key);

  final Credits credits;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: HeadedListTile(
        title: 'Top Billed',
        smallTitle: 'Cast',
        child: SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            itemBuilder: (BuildContext cotnext, int index) {
              final Cast item = credits.cast[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: CastListTile(item: item),
              );
            },
            itemCount: credits.cast.length,
          ),
        ),
      ),
    );
  }
}
