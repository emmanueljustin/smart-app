import 'package:flutter/material.dart';

class LikePage extends StatelessWidget {
  LikePage({super.key});

  final TextEditingController _search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
        child: Column(
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
                  'Liked Places',
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
            const SizedBox(
              height: 30.0,
            ),
            Material(
              elevation: 2.0,
              borderRadius: BorderRadius.circular(15.0),
              child: TextField(
                controller: _search,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: const Icon(Icons.search_rounded),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Colors.grey[600]
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Liked',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'View All',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.0, color: Colors.grey[700]),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.only(bottom: 10.0),
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
                    child: Row(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Image.network('https://scontent.fmnl15-1.fna.fbcdn.net/v/t1.6435-9/44065493_2791292270896782_4836663522152677376_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=a74216&_nc_ohc=QDJAha81IXkQ7kNvgGHKdyp&_nc_zt=23&_nc_ht=scontent.fmnl15-1.fna&_nc_gid=AhTVdiHVp66QicCYTr7cu0s&oh=00_AYCP_VcRNteo99bYo-vkC0WxRbINUMkKwo5e6q57ZNoACg&oe=67510852',
                            fit: BoxFit.cover,
                            height: 100.0,
                            width: 100.0,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Blue Lagoon',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 17.0,
                                    color: Colors.grey[700]!,
                                  ),
                                  const SizedBox(
                                    width: 2.0,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Grindavík, Iceland',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 15.0
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
    );
  }
}