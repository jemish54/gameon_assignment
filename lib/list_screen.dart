import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';

import 'detail_screen.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  static List<String> stadiumList = [
    'Wankhede International Cricket Stadium',
    'Narendra Modi Stadium',
    'Jawaharlal Nehru Stadium'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12))),
        leading: const Icon(Icons.menu),
        title: const Text('Grounds'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SvgIcon(
              'assets/search.svg',
              height: 20,
              width: 20,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: SvgIcon(
              'assets/filter.svg',
              height: 20,
              width: 20,
            ),
          )
        ],
      ),
      body: Column(children: [
        // SingleChildScrollView(
        //   child: Row(children: [
        //     // dateTile('Jan','03','Sun'),
        //     // dateTile('Jan','04','Sun'),
        //     // dateTile('Jan','05','Sun'),
        //     // dateTile('Jan','06','Sun',selected: true),
        //     // dateTile('Jan','07','Sun'),
        //     // dateTile('Jan','08','Sun'),
        //   ],),
        // )
        SizedBox(
          height: 105,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              dateTile('Jan', '03', 'Sun'),
              dateTile('Jan', '04', 'Mon'),
              dateTile('Jan', '05', 'Tue', selected: true),
              dateTile('Jan', '06', 'Wed'),
              dateTile('Jan', '07', 'Thu'),
              dateTile('Jan', '08', 'Fri'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10),
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
                    'Maharastra, India',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: const [
                  Text(
                    'Change',
                    style: TextStyle(color: Colors.teal, fontSize: 10),
                  ),
                  Icon(
                    Icons.chevron_right_outlined,
                    color: Colors.teal,
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: ((context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: InkWell(
                    onTap: (() => Navigator.push(context,MaterialPageRoute(builder: ((context) => const DetailScreen())))),
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    height: 130,
                                    width: 100,
                                    fit: BoxFit.fill,
                                    'assets/stadium${index + 1}.jpg',
                                  ),
                                  const SizedBox(
                                    width: 14,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        '20 over',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Row(
                                        children: [
                                          chipCustom('10:00 am',
                                              isSelected: true),
                                          chipCustom('01:00 pm'),
                                          chipCustom('04:00 pm',
                                              isSelected: true),
                                        ],
                                      ),
                                      const Text(
                                        '30 over',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Row(
                                        children: [
                                          chipCustom('02:00 pm',
                                              available: false),
                                          chipCustom('04:00 pm'),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  stadiumList[index],
                                  style:
                                      const TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(children: const [
                                Icon(Icons.location_on_outlined,color: Colors.grey,),
                                Text('Gujarat, Ahmedabad',style: TextStyle(fontSize: 12,color: Colors.grey))
                              ],),
                              const Divider(thickness: 0.5,color: Colors.grey),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                                const Text('Pitch Type: Mat'),
                                Row(children: const [
                                  Icon(CupertinoIcons.compass,color: Colors.teal,),
                                  SizedBox(width: 2,),
                                  Text('Only 2 Km far',style: TextStyle(color: Colors.teal),)
                                ],)
                              ],)
                            ]),
                      ),
                    ),
                  ),
                );
              })),
        )
      ]),
    );
  }

  Widget chipCustom(String text,
      {bool isSelected = false, bool available = true}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Chip(
        padding: const EdgeInsets.all(0),
        label: Text(
          text,
          style: TextStyle(
              color: available
                  ? isSelected
                      ? Colors.white
                      : Colors.grey
                  : Colors.red,
              fontSize: 10),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
                color: available
                    ? isSelected
                        ? Colors.teal
                        : Colors.grey
                    : Colors.red)),
        backgroundColor: isSelected ? Colors.teal : Colors.white,
      ),
    );
  }

  Widget dateTile(String month, String date, String day,
      {bool selected = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 2),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: selected ? Colors.teal : null,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          child: Column(
            children: [
              Text(
                month,
                style: TextStyle(color: selected ? Colors.white : null),
              ),
              Text(
                date,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selected ? Colors.white : null),
              ),
              Text(
                day,
                style: TextStyle(color: selected ? Colors.white : null),
              )
            ],
          ),
        ),
      ),
    );
  }
}
