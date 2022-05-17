import 'package:flutter/material.dart';
import 'package:tugas1_rekayasa_a_mobile/bg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _pages = <Widget>[
    // Icon(
    //   Icons.call,
    //   size: 150,
    // ),
    const Icon(
      Icons.calendar_view_day_rounded,
      color: Colors.white,
      size: 150,
    ),
    const Icon(
      Icons.bar_chart_rounded,
      color: Colors.white,
      size: 150,
    ),
    const Icon(
      Icons.call_to_action_sharp,
      color: Colors.white,
      size: 150,
    ),
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: const CircleAvatar(
            backgroundColor: Color(0xFF5751d3),
            radius: 45,
            backgroundImage: AssetImage('assets/face.png'),
          ),
        ),
        Column(
          children: [
            const Text('Bony', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.lightBlue)),
            const Text('Members since April 22rd 2222', style: TextStyle(fontSize: 15, color: Colors.lightBlue)),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Share Account',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlue, fixedSize: const Size(150, 40), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
            ),
          ],
        ),
        Flexible(
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(15),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                height: 100,
                width: 100.0,
                decoration: BoxDecoration(
                  borderRadius: new BorderRadius.circular(16.0),
                  color: Colors.white,
                ),
                child: TextButton(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.shopping_bag_sharp,
                          size: 50,
                        ),
                        Text(
                          "Shop",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                height: 100,
                width: 100.0,
                decoration: BoxDecoration(
                  borderRadius: new BorderRadius.circular(16.0),
                  color: Colors.white,
                ),
                child: TextButton(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.car_rental,
                          size: 50,
                        ),
                        Text(
                          "Rent Car",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                height: 100,
                width: 100.0,
                decoration: BoxDecoration(
                  borderRadius: new BorderRadius.circular(16.0),
                  color: Colors.white,
                ),
                child: TextButton(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.car_repair,
                          size: 50,
                        ),
                        Text(
                          "Repair",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                height: 100,
                width: 100.0,
                decoration: BoxDecoration(
                  borderRadius: new BorderRadius.circular(16.0),
                  color: Colors.white,
                ),
                child: TextButton(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.two_wheeler,
                          size: 50,
                        ),
                        Text(
                          "Rent Moto",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                height: 100,
                width: 100.0,
                decoration: BoxDecoration(
                  borderRadius: new BorderRadius.circular(16.0),
                  color: Colors.white,
                ),
                child: TextButton(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.house_siding_sharp,
                          size: 50,
                        ),
                        Text(
                          "Garage",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                height: 100,
                width: 100.0,
                decoration: BoxDecoration(
                  borderRadius: new BorderRadius.circular(16.0),
                  color: Colors.white,
                ),
                child: TextButton(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.privacy_tip,
                          size: 50,
                        ),
                        Text(
                          "Insurance",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        )
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Bg(),
        Scaffold(
          // appBar: AppBar(),
          backgroundColor: Colors.transparent,
          body: Center(
            child: _pages.elementAt(_selectedIndex), //New
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedLabelStyle: const TextStyle(color: Colors.indigo),
            selectedIconTheme: const IconThemeData(color: Colors.indigo),
            selectedItemColor: Colors.indigo,
            unselectedLabelStyle: const TextStyle(color: Colors.blue),
            unselectedIconTheme: const IconThemeData(color: Colors.blue),
            unselectedItemColor: Colors.blue,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_view_day_rounded,
                ),
                label: 'Feed',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_rounded),
                label: 'Stats',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.call_to_action_sharp,
                ),
                label: 'Chats',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.more_horiz_sharp,
                  ),
                  label: 'More'),
            ],
            currentIndex: _selectedIndex, //New
            onTap: _onItemTapped,
          ),
        ),
      ],
    );
  }
}
