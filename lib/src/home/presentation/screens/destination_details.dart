import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class DestinationDetailsScreen extends StatelessWidget {
  const DestinationDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.menu,
                      size: 30.0,
                    ),
                    Text(
                      'Detail',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
                    ),
                    Badge(
                      label: Text('9'),
                      child: Icon(
                        Icons.more_horiz,
                        size: 30.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(1.5, 1.5),
                        blurRadius: 0.3,
                        spreadRadius: 0.2,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,    
                        children: [
                          Container(
                            height: 250.0,
                            width: MediaQuery.of(context).size.width,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Image.network(
                              'https://www.flightgift.com/media/wp/FG/2024/01/1024-x-664-Blog-Design-10.webp',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            right: 30.0,
                            bottom: -25.0,
                            child: Container(
                              padding: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100.0),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(0, 0),
                                      blurRadius: 0.3,
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: const Icon(Icons.favorite,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Anse Source d’Argent',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 23.0,
                                  color: Colors.grey[700]!,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Expanded(
                                  child: Text(
                                    'Seychelles',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 15.0
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.calendar_month,
                                  size: 23.0,
                                  color: Colors.grey[700]!,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  '1 Dec - 25 Dec',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 15.0
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(1.5, 1.5),
                        blurRadius: 0.3,
                        spreadRadius: 0.2,
                      ),
                    ],
                  ),
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star,
                                    color: Colors.yellow[700],
                                  ),
                                  const SizedBox(
                                    width: 7.0,
                                  ),
                                  const Text('4.5',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.0,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 7.0,
                              ),
                              Text('Rating',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const VerticalDivider(),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.comment_rounded,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 7.0,
                                  ),
                                  Text('50+',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.0,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 7.0,
                              ),
                              Text('Reviews',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const VerticalDivider(),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.image_rounded),
                                  SizedBox(
                                    width: 7.0,
                                  ),
                                  Text('7',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.0,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 7.0,
                              ),
                              Text('Photos',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text('About Destination',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const ReadMoreText("Seychelles beaches are a stunning paradise, renowned for their powdery white sands, crystal-clear turquoise waters, and lush tropical surroundings. Each beach offers a unique blend of serenity and natural beauty, making it a perfect destination for relaxation, exploration, and adventure. Whether you're soaking up the sun on Anse Source d'Argent or snorkeling among vibrant coral reefs, the enchanting allure of Seychelles will leave you in awe.",
                  trimMode: TrimMode.Line,
                  trimLines: 3,
                  trimCollapsedText: 'Read more',
                  trimExpandedText: 'Show less',
                  textAlign: TextAlign.justify,
                  moreStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                  lessStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100.0,
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(0, -1.0),
              blurRadius: 6.0,
              spreadRadius: 0.3,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Total Price',
                  style: TextStyle(
                    color: Colors.grey[600]
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    const Text('\$250.00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text('/Person',
                      style: TextStyle(
                        color: Colors.grey[500]
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 60.0,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[800],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  shadowColor: Colors.black,
                  elevation: 5.0,
                ),
                child: const Row(
                  children: [
                    Text('Book Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                    Icon(Icons.chevron_right_rounded,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}