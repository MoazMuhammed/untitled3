import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          child: SingleChildScrollView(child: Column(
            children: [
              buildCustomBar(),
              buildCustomSearch(),
              buildCustomStoriesRow(),
              buildChats(),
              buildChats(),
              buildChats(),
              buildChats(),
              buildChats(),
              buildChats(),
              buildChats(),
              buildChats(),
              buildChats(),
            ],
          ),
        )),
      ),
    );
  }

  Widget buildCustomBar() {
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            CircleAvatar(
              radius: 27,
              backgroundImage: NetworkImage(
                  "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2022/07/batman-dc-comics-2751505.jpg?itok=wW2Bnv3s"),
            ),
            CircleAvatar(
              radius: 10,
              backgroundColor: Colors.white,
            ),
            CircleAvatar(
              radius: 9,
              child: Text(
                "2",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              backgroundColor: Colors.green,
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Chats",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 28),
        ),
        Spacer(),
        buildAppBarIcons(Icons.camera_alt_rounded),
        SizedBox(
          width: 5,
        ),
        buildAppBarIcons(Icons.edit),
      ],
    );
  }

  Widget buildAppBarIcons(IconData icon) {
    return CircleAvatar(
        radius: 20,
        backgroundColor: Colors.grey[300],
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: Colors.black,
            )));
  }

  Widget buildCustomSearch() {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(25)),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "Search",
            prefixIcon: Icon(Icons.search),
            border: InputBorder.none),
      ),
    );
  }

  Widget buildCustomStoriesRow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildAddStory(),
          SizedBox(width: 5),
          buildItemStory(),
          buildItemStory(),
          buildItemStory(),
          buildItemStory(),
          buildItemStory(),
          buildItemStory(),
          buildItemStory(),
        ],
      ),
    );
  }

  Widget buildAddStory() {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey,
        ),
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.white,
        ),
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 27,
              backgroundImage: NetworkImage(
                  "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2022/07/batman-dc-comics-2751505.jpg?itok=wW2Bnv3s"),
            ),
            CircleAvatar(
              radius: 11,
              backgroundColor: Colors.white,
            ),
            CircleAvatar(
              radius: 10,
              backgroundColor: Colors.black,
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 11,
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget buildItemStory() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 2),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue,
            ),
            CircleAvatar(
              radius: 28,
              backgroundColor: Colors.white,
            ),
            CircleAvatar(
              radius: 27,
              backgroundImage: NetworkImage(
                  "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2022/07/batman-dc-comics-2751505.jpg?itok=wW2Bnv3s"),
            ),
          ],
        ));
  }

  Widget buildChats() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Stack(alignment: AlignmentDirectional.bottomEnd, children: [
              CircleAvatar(
                radius: 27,
                backgroundImage: NetworkImage(
                    "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2022/07/batman-dc-comics-2751505.jpg?itok=wW2Bnv3s"),
              ),
              CircleAvatar(
                radius: 8,
                backgroundColor: Colors.green,
              ),
            ]),
            SizedBox(
              width: 17,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Batman",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "This city just showed you that it’s full of people ready to believe in good.",
                          maxLines: 1,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.black),
                        ),
                      ),
                      Text(
                        " . now",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.blue,radius: 7,
            ),
          ],
        ));
  }
}
