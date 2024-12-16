import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 10,
      children: [
        Center(
          child: Text(
            'Young Adult Ministry (YAM) Health Stats',
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.displaySmall,
            ),
          ),
        ),
        const Row(
          mainAxisSize: MainAxisSize.max,
          spacing: 24,
          children: [
            Card(
              elevation: 5,
              child: Column(
                children: [
                  Text('6 - Members'),
                  Text('1 - Average meetings per month'),
                  Text('25% 90 day turnover'),
                ],
              ),
            ),
            Card(
              elevation: 5,
              child: Column(
                children: [
                  Text('Demographics'),
                  //   TODO
                  Text('Add chart here'),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
