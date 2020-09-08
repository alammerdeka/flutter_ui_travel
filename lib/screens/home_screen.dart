import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_travel_ui/widget/widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentTab = 0;
  int _selectedIndex = 0;
  List<IconData> _icon = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.houseUser,
    FontAwesomeIcons.book,
    FontAwesomeIcons.locationArrow,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).backgroundColor
              : Colors.black12,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icon[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).accentColor
              : Colors.black54,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            vertical: 30.0,
          ),
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 120.0,
              ),
              child: Text(
                'Rachmatoellah Semesta Alam',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icon
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList(),
            ),
            SizedBox(
              height: 10.0,
            ),
            DestiantionCarousel(),
            SizedBox(
              height: 1.0,
            ),
            HotelCarousel(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_pizza,
              size: 30.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage(
                  "https://ps.w.org/wp-user-avatar/assets/icon-256x256.png?rev=1755722"),
            ),
            title: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
