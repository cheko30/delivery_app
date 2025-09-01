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
                    _sliderCards(context),
                    _headers(context, 'Popular this week', 'Show all'),
                    _populars(context, 'https://images.unsplash.com/photo-1581546104493-f7e013a136ba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                    _populars(context, 'https://images.unsplash.com/photo-1717588874169-da2ba5ec3ec2?q=80&w=855&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                    _populars(context, 'https://images.unsplash.com/photo-1505394033641-40c6ad1178d7?q=80&w=887&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                    SizedBox(height: 10.0,),
                    _headers(context, "Collections", "Show all"),
                    _sliderCollections(context),
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

Widget _headers(BuildContext context, String textHeader, String textAction) {
  return Row(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: headerText(textHeader, Colors.black, FontWeight.bold, 20.0),
      ),
      Spacer(),
      GestureDetector(
        child: Row(
          children: [
            Text(
              textAction,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 15.0
              ),
            ),
            Icon(Icons.play_arrow)
          ],
        ),
      ),
    ],
  );
}

Widget _populars(BuildContext context, String photo) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(left: 10.0),
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                width: 80.0,
                height: 80.0,
                fit: BoxFit.cover,
                image: NetworkImage(photo)
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 7.0),
                    child: headerText("Andy & Cindy's Dinner", Colors.black, FontWeight.bold, 17.0)
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 5.0),
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
                      Icon(Icons.star, color: yellow, size: 16.0,),
                      Text(
                        "4.5",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        child: Text(
                          "233 ratings",
                          style: TextStyle(
                            color: gray,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 35.0),
                        width: 110.0,
                        height: 18.0,
                        child: ElevatedButton(
                          onPressed: () {
                            
                          },
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
              ),
            )
          ],
        ),
      )
    ],
  );
}

Widget _sliderCollections(BuildContext context) {
  return Container(
    height: 180.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _cardCollections(context);
          }
        );
      },
    ),
  );
}

Widget _cardCollections(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image(
              width: 300.0,
              height: 150.0,
              fit: BoxFit.cover,
              image: NetworkImage("https://images.unsplash.com/photo-1565958011703-44f9829ba187?q=80&w=930&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
            ),
          )
        ],
      ),
    );
  }