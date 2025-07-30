import 'package:delivery_app/src/colors/colors.dart';
import 'package:flutter/material.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate(
            [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0,),
                child: Column(
                  children: [
                    _topBar(context,),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20.0, ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Discover new places',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0
                        ),
                      ),
                    )
                  ],
                ),
              )
            ]
          ))
        ],
      ) 
    );
  }
}

Widget _topBar(BuildContext context) {
  return Row(
    children: [
      Container(
        width: 310.0,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(left: 16.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(234, 236, 239, 1.0),
          ),
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Row(
          children: [
            Icon(Icons.search, size: 20.0, color: gray,),
            Container(
              margin: EdgeInsets.only(left: 5.0),
              child: Text(
                'Search',
                style: TextStyle(
                  color: gray,
                  fontSize: 17.0
                ),
              ),
            )
          ],
        ),
      ),
      Container(
        width: 45.0,
        height: 45.0,
        margin: EdgeInsets.only(left: 10.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(209, 209, 214, 1.0),
          borderRadius: BorderRadius.circular(30.0)
        ),
        child: IconButton(
          onPressed: () {}, 
          icon: Icon(
            Icons.filter_list,
            size: 30.0,
            color: Colors.white,
          )
        ),
      )
    ],
  );
}