import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartapp/global_core/widgets/divider_with_name.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 200.0,
                    child: Image.network('https://socialeyes.in/wp-content/uploads/2021/08/Role-of-Digital-Marketing-in-Travel-Tourism-Industry.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: GestureDetector(
                      onTap: () => log('Change profile pic'),
                      child: Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[800]!.withOpacity(0.8),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.settings,
                          size: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 90,
                    right: 90,
                    bottom: -75,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(1.5, 1.5),
                                  blurRadius: 0.3,
                                  spreadRadius: 0.2,
                                )
                              ],
                            ),
                            child: Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle
                              ),
                              child: Image.network('https://img.freepik.com/free-photo/worldface-thai-boy-white-background_53876-138036.jpg?t=st=1730689476~exp=1730693076~hmac=1795382fdaf3db0b653c0fc04e462ad42940757920f4df41f85c19805bc4fea6&w=740',
                                fit: BoxFit.cover,
                                height: 150.0,
                                width: 150.0,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 9,
                            bottom: 9,
                            child: GestureDetector(
                              onTap: () => log('Change profile pic'),
                              child: Container(
                                padding: const EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey[800]!.withOpacity(0.8),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(Icons.create_rounded,
                                  size: 25.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    const Text('John Doe Delacruz',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const DividerWithName(sectionName: 'Promos & Offers'),
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
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              SvgPicture.asset('assets/plane-ticket.svg',
                                width: 50.0,
                              ),
                              Text('29 days left',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Discount Fare Promo',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ),
                                Text('Earn discounts by finishing our monthly tasks',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 12.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: LinearProgressIndicator(
                                        value: 0.35,
                                        minHeight: 10.0,
                                        borderRadius: BorderRadius.circular(20.0),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Text('35%',
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 12.0,
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
                      height: 10.0,
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
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/rocket.svg',
                          width: 50.0,
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('CL!CKED Premium',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ), 
                                Text('Save on your travel expenses by subscribing to our premium',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 12.0,
                                  ),
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
                    const DividerWithName(sectionName: 'General'),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        Material(
                          elevation: 1.0,
                          borderRadius: BorderRadius.circular(20.0),
                          child: ListTile(
                            onTap: () => log('Contact Support'),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            tileColor: Colors.white,
                            leading: const Icon(Icons.support_agent_rounded),
                            title: const Text('Contact Support',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Material(
                          elevation: 1.0,
                          borderRadius: BorderRadius.circular(20.0),
                          child: ListTile(
                            onTap: () => log('FAQ'),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            tileColor: Colors.white,
                            leading: const Icon(Icons.question_answer_rounded),
                            title: const Text('FAQ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Material(
                          elevation: 1.0,
                          borderRadius: BorderRadius.circular(20.0),
                          child: ListTile(
                            onTap: () => log('Logout'),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            tileColor: Colors.white,
                            leading: const Icon(Icons.logout_rounded),
                            title: const Text('Logout',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                      ],
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