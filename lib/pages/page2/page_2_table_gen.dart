import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TableGen2 {

  Color darkGreen = const Color(0xff398241);


  List<Widget> createTable() {
    List<Widget> myWidgetsList = [];
    Map<String, List<List<String>>> tableSourceMap = {
      '': [
        ['01/30/2023', 'nerji', '-\$500,000', 'WT +3'],
        ['01/31/2023', 'nerji', '\$196,667', 'S37'],
      ],
      'Round Two': [
        ['01/31/2023', 'nerji', '\$207,764', 'S37'],
      ],
      'Stock Market Dividends': [
        ['01/31/2023', 'nerji', '\$300,000', 'Playoff'],
      ],
      'Round One': [
        ['01/31/2023', 'nerji', '-\$66,666', 'World'],
      ],
      'Series bets': [
        ['02/03/2023', 'nerji', '\$900,000', 'Twitter'],
        ['04/03/2023', 'nerji', '\$500,000', 'S38 MAU'],
      ],
      'Contract': [
        ['02/05/2023', 'nerji', '\$100,000', 'Jobs'],
      ],
      'Payout/Rookie Tasks/Other Payments': [
        ['02/05/2023', 'nerji', '\$19,000,000', 'HoF'],
      ],
      'Equip + WT + 5': [
        ['02/06/2023', 'nerji', '\$2,000,000', 'Florida'],
      ],
      'Flamingos Team Jobs': [
        ['', '', '', ''],
      ],
    };
    for (var item in tableSourceMap.entries) {
      // print("${item.key} - ${item.value}");
      if (item.key != "") {
        myWidgetsList.add(Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              height: 24,
              decoration: BoxDecoration(
                color: darkGreen,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              child: Text(
                '     ${item.key}     ',
                style: GoogleFonts.notoSans(
                  textStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ));
      }
      for (var i = 0; i < item.value.length; i++) {
        myWidgetsList.add(
          Table(
            // border: TableBorder.all(),
            columnWidths: const <int, TableColumnWidth>{
              // 0: IntrinsicColumnWidth(),
              0: FlexColumnWidth(),
              // 1: FixedColumnWidth(44),
              1: FlexColumnWidth(),
              2: FlexColumnWidth(),
              3: FlexColumnWidth(),
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                children: [
                  for (var ii = 0; ii < item.value[i].length; ii++)
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.top,
                      child: Container(
                        alignment: Alignment.center,
                        height: 30,
                        child: Text(
                          item.value[i][ii],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        );
      }
    }
    return myWidgetsList;
  }

  Widget createTableTitle() {
    List<String> leftTitleList = [
      'Date',
      'Username',
      'net',
      'Source',
    ];
    return Table(
      // border: TableBorder.all(),
      columnWidths: const <int, TableColumnWidth>{
        // 0: IntrinsicColumnWidth(),
        0: FlexColumnWidth(),
        // 1: FixedColumnWidth(44),
        1: FlexColumnWidth(),
        2: FlexColumnWidth(),
        3: FlexColumnWidth(),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
          children: [
            for (int i = 0; i < leftTitleList.length; i++)
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Text(
                  leftTitleList[i],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
// Map<String, List<String>>
}
