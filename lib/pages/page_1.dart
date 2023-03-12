import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;
    double scrHeight = MediaQuery.of(context).size.height;
    Color darkGreen = const Color(0xff398241);
    Color lightGreen = const Color(0xffd9feec);

    Widget createTable2() {
      List<String> leftColumnList = [
        'Activity Check #276',
        'Season 38 Spring Training',
        'Season 38 Spring Primetime Week1',
        'Season 38 Season Predications ',
      ];
      List<Image> rightColumnList = [
        const Image(
          height: 20,
          image: AssetImage('assets/img/icon.png',
          ),
        ),
        const Image(
          height: 20,
          image: AssetImage('assets/img/icon.png'),
        ),
        const Image(
          height: 20,
          image: AssetImage('assets/img/icon2.png'),
        ),
        const Image(
          height: 20,
          image: AssetImage('assets/img/icon.png'),
        ),

      ];
      List<TableRow> rows = [];
      for (int i = 0; i < rightColumnList.length; ++i) {
        rows.add(TableRow(children: [
          Text(
            leftColumnList[i],
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 34,
            width: 1,
          ),
            rightColumnList[i],

        ]));
      }
      return Table(
        // border: TableBorder.all(),
        columnWidths: const <int, TableColumnWidth>{
          // 0: IntrinsicColumnWidth(),
          0: FlexColumnWidth(),
          1: FixedColumnWidth(44),
          // 2: IntrinsicColumnWidth(),
          2: FixedColumnWidth(100),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: rows,
      );
    }

    Widget createTable() {
      List<String> leftColumnList = [
        'Regression Session',
        'Team',
        'Position',
        'TPE',
        'Forum Name',
        'Last Seen',
        'Last Updated',
        'Balance'
      ];
      List<String> rightColumnList = [
        'S38',
        'Florida Flamingos',
        'SS',
        '312',
        'nerji',
        'Today 02:58',
        '02/06/2023',
        '\$7,887234'
      ];
      List<TableRow> rows = [];
      for (int i = 0; i < rightColumnList.length; ++i) {
        rows.add(TableRow(children: [
          Text(
            leftColumnList[i],
            textAlign: TextAlign.end,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            height: 34,
            width: 1,

          ),
          Text(
            rightColumnList[i],
            style:  TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w800,
              color:   i==7 ? Colors.green : null,
            ),
          ),
        ]));
      }
      return Table(
        // border: TableBorder.all(),
        columnWidths: const <int, TableColumnWidth>{
          // 0: IntrinsicColumnWidth(),
          0: FlexColumnWidth(),
          1: FixedColumnWidth(44),
          2: FlexColumnWidth(),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: rows,
      );
    }

    return Scaffold(
      body: Column(
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
                    'Jeff Lewis',
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
                      backgroundColor: lightGreen, // Background color
                      minimumSize: const Size(190, 44),
                      side: BorderSide(
                        width: 1.0,
                        color: darkGreen,
                      ),
                      textStyle: TextStyle(
                          fontSize: (scrHeight * 0.40) / 21,
                          fontWeight: FontWeight.w600)),
                  onPressed: () {},
                  child: Text('Detail',
                      style: TextStyle(
                        color: darkGreen,
                      )),
                ),
                const SizedBox(width: 30),
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
                  child: const Text('Stats'),
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
              15.0,
              10.0,
              15.0,
              10.0,
            ),
            width: scrWidth,
            height: scrHeight * 0.315,
            child: createTable(),
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
              5.0,
              15.0,
              10.0,
            ),
            width: scrWidth,
            height: scrHeight * 0.20,
            // color: Colors.red,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: (scrHeight * 0.40) / 8,
                  decoration: BoxDecoration(
                    color: darkGreen,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Tasks",
                      style: TextStyle(
                        fontSize: (scrHeight * 0.40) / 19,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(
                      15.0,
                      0.0,
                      15.0,
                      0.0,
                    ),
                    child: createTable2(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
