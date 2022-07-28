import 'package:flutter/material.dart';

class InstagramScreen extends StatelessWidget {
  const InstagramScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Container(
          color: Colors.black,
          padding: EdgeInsets.all(10),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildTopBar(),
                buildCustomStoriesRow(),
                buildProfileUser(),
                buildImageScale(),
            buildProfileUser(),
                buildImageScale(),
            buildProfileUser(),
                buildImageScale(),
            buildProfileUser(),
                buildImageScale(),
            buildProfileUser(),
                buildImageScale(),
                buildProfileUser(),
                buildImageScale(),
              ],
            ),
          ),

        ),
      ),
bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Widget buildTopBar() {
    return Container(
        child: Row(
      children: [
        Text(
          "Instagram",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
        ),
        SizedBox(
          width: 1,
        ),
        buildAppBarIcons(Icons.arrow_drop_down),
        Spacer(),
        buildAppBarIcons(Icons.add_box_rounded),
        SizedBox(
          width: 5,
        ),
        buildAppBarIcons(Icons.favorite),
        SizedBox(
          width: 5,
        ),
        buildAppBarIcons(Icons.near_me),
      ],
    ));
  }

  Widget buildAppBarIcons(IconData icon) {
    return CircleAvatar(
        radius: 20,
        backgroundColor: Colors.black,
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: Colors.white,
            )));
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
          backgroundColor: Colors.pinkAccent[200],
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
              radius: 10,
              backgroundColor: Colors.blue,
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
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.orange[300],
            ),
            CircleAvatar(
              radius: 27,
              backgroundImage: NetworkImage(
                  "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2022/07/batman-dc-comics-2751505.jpg?itok=wW2Bnv3s"),
            ),
          ],
        ));
  }

  Widget buildProfileUser() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            Stack(alignment: AlignmentDirectional.bottomEnd, children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                    "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2022/07/batman-dc-comics-2751505.jpg?itok=wW2Bnv3s"),
              ),
            ]),
            SizedBox(
              width: 10,
            ),
            Text(
              "Batman",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white),
            ),
            Spacer(),
            Text(
              " ...",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
            SizedBox(
              width: 17,
            ),
          ],
        ));
  }

  Widget buildImageScale() {
    return SingleChildScrollView(
      child: Container(
        child: Card(
          color: Colors.black,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0))),
          child: InkWell(
            onTap: () => print("ciao"),
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  ),
                  child: Image.asset('lib/icons/subs.jpg', fit: BoxFit.fill),
                ),
                Row(
                  children: [
                    buildAppBarIcons(Icons.favorite_rounded),
                    buildAppBarIcons(Icons.comment),
                    buildAppBarIcons(Icons.near_me),
                    Spacer(),
                    buildAppBarIcons(Icons.save_alt_rounded),

                  ],
                ),
                ListTile(
                  title: Text(
                    '150,279,213 likes',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                  subtitle: Text(
                    'Wonder Women  Everyone is afraid now',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBottomNavigationBar(){
    return  BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(.60),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      showUnselectedLabels: false,
      onTap: (value) {
        // Respond to item press.
      },
      items: [
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.home_filled),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.search),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.video_library_outlined),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.shopping_basket_outlined),
        ),   BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.hail),
        ),
      ],
    );
  }
}
