import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ground Details'),
        leading: const Icon(Icons.menu),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  CupertinoIcons.calendar,
                  color: Colors.teal,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Sunday, 21 June 2021',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Image.asset('assets/detail1.png'),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Wankhede International Cricket Stadium',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.teal,
                      ),
                      Text(
                        'Navigate',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.teal),
                      ),
                    ],
                  ),
                  const Text('Pitch Type: Mat'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      SvgIcon(
                        'assets/food.svg',
                        color: Colors.teal,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      SvgIcon(
                        'assets/toilet.svg',
                        color: Colors.teal,
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.teal.withAlpha(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        children: const [
                          Icon(
                            CupertinoIcons.compass,
                            color: Colors.teal,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '2 Km far',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: (() => Navigator.push(context,MaterialPageRoute(builder: ((context) => const DetailScreen())))),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'For 20 Overs',
                          ),
                          chipCustom('10:00 am')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Team 1:',
                                style: TextStyle(color: Colors.grey),
                              ),
                              const Text(
                                'Mumbai Indians',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Chip(
                                label: const Text('Booked'),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6)),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Team 2:',
                                style: TextStyle(color: Colors.grey),
                              ),
                              const Text(
                                'Available',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Chip(
                                label: const Text(
                                  'Available',
                                  style: TextStyle(color: Colors.teal),
                                ),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    side: const BorderSide(color: Colors.teal)),
                              )
                            ],
                          ),
                          const SizedBox(),
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Ball Provided',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Checkbox(
                                  value: true,
                                  onChanged: (value) {},
                                  checkColor: Colors.teal,
                                  activeColor: Colors.grey.withAlpha(90),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Text('Umpire Provided',
                                    style: TextStyle(fontSize: 12)),
                                Checkbox(
                                  value: false,
                                  onChanged: (value) {},
                                  checkColor: Colors.teal,
                                  activeColor: Colors.grey.withAlpha(90),
                                  fillColor: MaterialStateProperty.all<Color>(
                                      Colors.grey.withAlpha(90)),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                              ],
                            ),
                            const Text('Ball Details: '),
                            const Text(
                              'Tennis',
                              style: TextStyle(color: Colors.teal),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              '₹ 3000',
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.teal),
                                    elevation:
                                        MaterialStateProperty.all<double>(4),
                                    shadowColor: MaterialStateProperty.all<Color>(
                                        Theme.of(context).primaryColor),
                                    shape:
                                        MaterialStateProperty.all<OutlinedBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)))),
                                child: const Text('Book Now')),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'For 30 Overs',
                        ),
                        chipCustom('03:00 am')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Team 2:',
                              style: TextStyle(color: Colors.grey),
                            ),
                            const Text(
                              'Available',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Chip(
                              label: const Text(
                                'Available',
                                style: TextStyle(color: Colors.teal),
                              ),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  side: const BorderSide(color: Colors.teal)),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Team 2:',
                              style: TextStyle(color: Colors.grey),
                            ),
                            const Text(
                              'Available',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Chip(
                              label: const Text(
                                'Available',
                                style: TextStyle(color: Colors.teal),
                              ),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  side: const BorderSide(color: Colors.teal)),
                            )
                          ],
                        ),
                        const SizedBox(),
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Row(
                            children: [
                              const Text(
                                'Ball Provided',
                                style: TextStyle(fontSize: 12),
                              ),
                              Checkbox(
                                value: true,
                                onChanged: (value) {},
                                checkColor: Colors.teal,
                                activeColor: Colors.grey.withAlpha(90),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text('Umpire Provided',
                                  style: TextStyle(fontSize: 12)),
                              Checkbox(
                                value: false,
                                onChanged: (value) {},
                                checkColor: Colors.teal,
                                activeColor: Colors.grey.withAlpha(90),
                                fillColor: MaterialStateProperty.all<Color>(
                                    Colors.grey.withAlpha(90)),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ],
                          ),
                          const Text('Ball Details: '),
                          const Text(
                            'Tennis',
                            style: TextStyle(color: Colors.teal),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '₹ 6000',
                            style: TextStyle(
                                color: Colors.teal,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.teal),
                                  elevation:
                                      MaterialStateProperty.all<double>(4),
                                  shadowColor: MaterialStateProperty.all<Color>(
                                      Theme.of(context).primaryColor),
                                  shape:
                                      MaterialStateProperty.all<OutlinedBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8)))),
                              child: const Text('Book Now')),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget chipCustom(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Chip(
        padding: const EdgeInsets.all(0),
        label: Text(
          text,
          style: const TextStyle(color: Colors.teal, fontSize: 14),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: Colors.teal)),
        backgroundColor: Colors.white,
      ),
    );
  }
}
