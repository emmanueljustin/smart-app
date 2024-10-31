import 'package:flutter/material.dart';
import 'package:smartapp/src/home/presentation/screens/destination_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
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
                    Icon(
                      Icons.menu,
                      size: 30.0,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
                    ),
                    Badge(
                      label: Text('9'),
                      child: Icon(
                        Icons.notifications,
                        size: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Todo will add Categories here that comes from api
                    Container(
                      height: 30.0,
                      margin: const EdgeInsets.only(left: 20.0),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        clipBehavior: Clip.none,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.only(right: 10.0),
                            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4.0),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(1.5, 1.5),
                                  blurRadius: 0.3,
                                  spreadRadius: 0.2,
                                )
                              ],
                            ),
                            child: const Text(
                              'sample',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
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
                          const Text(
                            'Popular',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                          ),
                          // Todo will add a redirect to a specific page where i can view all popular destinations
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'View All',
                              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.0, color: Colors.grey[700]),
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
                        clipBehavior: Clip.none,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const DestinationDetailsScreen())),
                            child: Container(
                              width: 200.0,
                              margin: const EdgeInsets.only(right: 20.0),
                              padding: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black38,
                                    offset: Offset(5.0, 5.0),
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0,
                                  )
                                ],
                              ),
                              child: Column(
                                children: [
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        height: MediaQuery.of(context).size.height * 0.2,
                                        width: MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0)),
                                        clipBehavior: Clip.antiAlias,
                                        child: Image.network(
                                          'https://www.flightgift.com/media/wp/FG/2024/01/1024-x-664-Blog-Design-10.webp',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Positioned(
                                        top: 10.0,
                                        right: 10.0,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 5),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(3.0),
                                          ),
                                          child: const Text(
                                            '\$ 250',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: -15.0,
                                        right: 20.0,
                                        child: Container(
                                          padding: const EdgeInsets.all(5.0),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                              color: Colors.grey[100]!,
                                              width: 1.0,
                                            ),
                                            borderRadius: BorderRadius.circular(100.0),
                                          ),
                                          child: const Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Expanded(
                                            child: Text(
                                              'Anse Source d’Argent',
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.location_on_outlined,
                                                size: 20.0,
                                                color: Colors.grey[700]!,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  'Seychelles',
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(color: Colors.grey[600]),
                                                ),
                                              ),
                                              Icon(
                                                Icons.star_border_outlined,
                                                size: 20.0,
                                                color: Colors.yellow[700],
                                              ),
                                              Text(
                                                '9.5',
                                                style: TextStyle(color: Colors.grey[600]),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Recommended',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                          ),
                          // Todo will add a redirect to a specific page where i can view all popular destinations
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'View All',
                              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.0, color: Colors.grey[700]),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 100.0,
                      margin: const EdgeInsets.only(left: 20.0),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        clipBehavior: Clip.none,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 270.0,
                            margin: const EdgeInsets.only(right: 20.0),
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black38,
                                  offset: Offset(5.0, 5.0),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                )
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 100.0,
                                  width: 100.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                                  child: Image.network(
                                    'https://cdn.britannica.com/19/195519-050-5F2A5996/village-canton-Bern-Switzerland.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Bern',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              size: 20.0,
                                              color: Colors.grey[700]!,
                                            ),
                                            const SizedBox(
                                              width: 5.0,
                                            ),
                                            Expanded(
                                              child: Text(
                                                'Switzerland',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(color: Colors.grey[600]),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}