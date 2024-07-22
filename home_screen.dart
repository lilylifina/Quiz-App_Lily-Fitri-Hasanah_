import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Sushiman',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 15,
                ),
                Text(
                  'Jakarta, Indonesia',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.cart,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              height: 200,
              padding: EdgeInsets.all(10),
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asseps/images/sushi_nigiri.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5),
                    BlendMode.darken,
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Text(
                    'Get Promo 78%\nSushi Nigiri',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: CupertinoButton(
                      color: Colors.red.withOpacity(0.8),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Redeem'),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_forward,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),

          // Searchbar
          SearchBar(
            hintText: 'Search food',
            hintStyle: MaterialStatePropertyAll(TextStyle(color: Colors.grey)),
            leading: Icon(CupertinoIcons.search),
            padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 16)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
                side: BorderSide(
                  width: 1,
                  color: Colors.grey,
                ),
              ),
            ),
            elevation: MaterialStatePropertyAll(0),
          ),

          // Best Seller
        ],
      ),
    );
  }
}
