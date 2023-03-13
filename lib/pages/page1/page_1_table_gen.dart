import 'package:flutter/material.dart';

class TableGen {
  Widget createTable2() {
    List<String> leftColumnList = [
      'Activity Check #276',
      'Season 38 Spring Training',
      'Season 38 Spring Primetime Week1',
      'Season 38 Season Predications',
    ];
    List<Image> rightColumnList = [
      const Image(
        height: 20,
        image: AssetImage(
          'assets/img/icon.png',
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
      rows.add(
        TableRow(
          children: [
            Text(
              leftColumnList[i],
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 34,
              width: 1,
            ),
            rightColumnList[i],
          ],
        ),
      );
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
      rows.add(
        TableRow(
          children: [
            Text(
              leftColumnList[i],
              textAlign: TextAlign.end,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 34,
              width: 1,
            ),
            Text(
              rightColumnList[i],
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w800,
                color: i == 7 ? Colors.green : null,
              ),
            ),
          ],
        ),
      );
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
}
