import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BestFoodWidget extends StatefulWidget {
  @override
  _BestFoodWidgetState createState() => _BestFoodWidgetState();
}

class _BestFoodWidgetState extends State<BestFoodWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          BestFoodTitle(),
          BestFoodList(),
        ],
      ),
    );
  }
}

class BestFoodTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Best Foods",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}

class BestFoodTiles extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String rating;
  final String numberOfRating;
  final String price;
  final String slug;

  BestFoodTiles({
    Key key,
    this.name = "Name",
    this.imageUrl,
    this.rating,
    this.numberOfRating,
    this.price,
    this.slug,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(boxShadow: [
              // BoxShadow(
              //   color: Color(0xFFfae3e2),
              //   blurRadius: 15.0,
              //   offset: Offset(0, 0.75),
              // ),
            ]),
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/bestfood/' + imageUrl + ".jpeg",
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, top: 5),
                    alignment: Alignment.bottomLeft,
                    child: Text(name,
                        style: TextStyle(
                            color: Color(0xFF6e6e71),
                            fontSize: 12,
                            fontWeight: FontWeight.normal)),
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 1,
              margin: EdgeInsets.all(5),
            ),
          ),
        ],
      ),
    );
  }
}

class BestFoodList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: StaggeredGridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverStaggeredGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 8,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          staggeredTileCount: 10,
          staggeredTileBuilder: (i) => StaggeredTile.fit(4),
        ),
        itemBuilder: (BuildContext context, int index) {
          return BestFoodTiles(
            imageUrl: 'ic_best_food_$index',
          );
        },
      ),
    );
  }
}
