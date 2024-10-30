import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.menu,
                      size: 30.0,
                    ),
                    Text('Home',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23.0
                      ),
                    ),
                    Badge(
                      label: Text('9'),
                      child: Icon(Icons.notifications,
                        size: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Todo will add Categories here that comes from api
                  Container(
                    height: 30.0,
                    margin: const EdgeInsets.only(left: 20.0),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 10.0),
                          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.0
                            ),
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: const Text('sample'),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Popular',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0
                          ),
                        ),
                        // Todo will add a eredirect to a specific page where i can view all popular destinations
                        GestureDetector(
                          onTap: () {},
                          child: Text('View All',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17.0,
                              color: Colors.grey[700]
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 250.0,
                    margin: const EdgeInsets.only(left: 20.0),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        // Todo will work on this based on https://dribbble.com/shots/19212911/attachments/14366953?mode=media design
                        return Container(
                          height: 250.0,
                          width: 200.0,
                          margin: const EdgeInsets.only(right: 20.0),
                          decoration: BoxDecoration(
                            color: Colors.blue[200],
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}