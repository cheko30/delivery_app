import 'package:card_swiper/card_swiper.dart';
import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/headers_text.dart';
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
                      child: headerText('Discover new places', Colors.black, FontWeight.bold, 30.0)
                    ),
                    _sliderCards(context)
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

Widget _sliderCards(BuildContext context) {
  return Container(
    height: 350.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _card(context);
          }
        );
      },
    ),
  );
}

Widget _card(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(5.0),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
            width: 210.0,
            height: 250.0,
            fit: BoxFit.cover,
            image: NetworkImage('https://plus.unsplash.com/premium_photo-1698867576357-0d4b4f3063d6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjF8fGZvb2R8ZW58MHwyfDB8fHwwfHx8MA'),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top:10),
              child: Text(
                "Andy & Cindy's Dinner",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "87 Botsford Circle Apt",
                style: TextStyle(
                  color: gray,
                  fontWeight: FontWeight.w500,
                  fontSize: 13.0
                ),
              ),
            ),
            Row(
              children: [
                Icon(Icons.star, color: yellow, size: 16,),
                Text(
                  "4.8",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0
                  ),
                ),
                Text(
                  "233 ratings",
                  style: TextStyle(
                    color: gray,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  width: 95.0,
                  height: 18.0,
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      elevation: 0.5,
                      shape: StadiumBorder(),
                      backgroundColor: Color.fromRGBO(255, 140, 0, 1.0),
                    ),
                    child: Text(
                      'Delivery',
                      style: TextStyle(     
                        color: Colors.white,                                        
                        fontSize: 11.0
                      ),
                    ),                    
                  ),
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}