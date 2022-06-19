import 'package:fiverr/customWidget/roundedPhoto.dart';
import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

Widget GridWiewCustom(String image){

return Expanded(
                  child: GridView.custom(
                    padding: EdgeInsets.all(15),
                gridDelegate: SliverQuiltedGridDelegate(
                  
                  crossAxisCount: 4,
                  mainAxisSpacing: 20,
                  crossAxisSpacing:20,
                  repeatPattern: QuiltedGridRepeatPattern.inverted,
                  pattern: [
                    const QuiltedGridTile(2, 3),
                    const QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 2),
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                  (context, index) => roundedPhoto(image, radius: 15, height: 80, whidht: 150)
                ),
              ));

}

