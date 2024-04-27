import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/app_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List insights = [
    {
      'title': 'Earnings',
      'count': '4 554.00 \$',
      'color': 0xFFB6DEC1,
      'icon': '/images/earn_coin.svg',
    },
    {
      'title': 'Jobs completed',
      'count': '129',
      'color': 0xFFeefca7,
      'icon': '/images/earn_coin.svg',
    },
    {
      'title': 'Active Job',
      'count': '3',
      'color': 0xFFe7cff2,
      'icon': '/images/earn_coin.svg',
    },
  ];

  final List activeJobs = [
    {
      'seller': 'Jaxen Cash',
      'rate': '5',
      'title': 'Redesigning Mobile App Navigation',
      'description':
          'uncle touch truck triangle sport load shoot image great hidden various what military owner silver pride suggest torn journey heard major your team face',
      'keys': ['Prototyping', 'Usability Testing', 'Concert'],
      'DueDate': 'May 12, 2023 4:00 Am',
      'budget': '430.00',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '👋Hello, Jane Doe',
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Let's do some work today",
                    style: GoogleFonts.poppins(
                      fontSize: 12.5,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Insights',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              height: 125,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: insights.length,
                itemBuilder: (context, index) {
                  final insight = insights[index];

                  return Container(
                    height: 125,
                    width: 150,
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: Color(insight['color']),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.teal[900],
                          child: SvgPicture.asset('images/earn_coin.svg'),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          insight['title'],
                          style: GoogleFonts.nunito(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          insight['count'],
                          style: GoogleFonts.nunito(
                            fontSize: 21,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Text(
              'Active Jobs',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
