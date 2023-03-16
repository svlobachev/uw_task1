import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uw_task1/pages/page2/page_2_table_gen.dart';
import 'package:uw_task1/pages/page2/sliver_page_2_view.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TableGen2 tableGen2 = TableGen2();
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;
    final mediaQuery = MediaQuery.of(context);
    Color darkGreen = const Color(0xff398241);
    Color lightGreen = const Color(0xffd9feec);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
        top: mediaQuery.padding.top,),
        child: Column(
          children: [
            SizedBox(
              width: scrWidth,
              height: scrHeight * 0.36,
              child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                const Image(
                  image: AssetImage('assets/img/logo.png'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    15.0,
                    10.0,
                    15.0,
                    10.0,
                  ),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(12.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: darkGreen),
                        // border: InputBorder.none,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.all(18.0),
                        filled: true,
                        fillColor: lightGreen,

                        // border: OutlineInputBorder(),
                        hintText: 'Search Player',
                        hintStyle:
                            const TextStyle(fontSize: 15.0, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: scrWidth,
                  height: (scrHeight * 0.40) / 6,
                  color: darkGreen,
                  child: Center(
                    child: Text(
                      'Jeff Lewis2',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: (scrHeight * 0.40) / 5 / 3,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            letterSpacing: .0),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(
              width: scrWidth,
              height: (scrHeight * 0.40) / 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(190, 44),
                        side: const BorderSide(
                          width: 1.0,
                          color: Colors.black12,
                        ),
                        textStyle: TextStyle(
                            fontSize: (scrHeight * 0.40) / 21,
                            fontWeight: FontWeight.w600)),
                    onPressed: null,
                    child: const Text('Detail'),
                  ),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: lightGreen, // Background color
                        minimumSize: const Size(190, 44),
                        side: BorderSide(
                          width: 1.0,
                          color: darkGreen,
                        ),
                        textStyle: TextStyle(
                            fontSize: (scrHeight * 0.40) / 21,
                            fontWeight: FontWeight.w600)),
                    onPressed: () {
                      Navigator.pushNamed(context, '/stats');
                    },
                    child: Text(
                      'Stats',
                      style: TextStyle(
                        color: darkGreen,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              margin: const EdgeInsets.fromLTRB(
                15.0,
                0.0,
                15.0,
                10.0,
              ),
              padding: const EdgeInsets.fromLTRB(
                0.0,
                10.0,
                15.0,
                10.0,
              ),
              width: scrWidth,
              height: scrHeight * 0.54,

                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: (scrHeight * 0.40) / 18,
                        decoration: BoxDecoration(
                          // color: darkGreen,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: tableGen2.createTableTitle(),
                        ),
                      ),
                         SizedBox(
                          key: UniqueKey(),
                          height: scrHeight * 0.49,
                          child:  MySliverPage2(),
                        ),
                    ],
                  ),

            ),
          ],
        ),
      ),
    );
  }
}
