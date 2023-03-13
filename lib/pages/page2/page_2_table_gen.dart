import 'package:flutter/material.dart';

class TableGen2 {

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

  Widget createTable() {
    List<String> leftColumnList = [
      'Regression Session',
      'Team',
      'Position',
      'TPE',
      'Forum Name',
      'Last Seen',
      'Last Updated',
      'Balance',
      'Regression Session',
      'Team',
      'Position',
      'TPE',
      'Forum Name',
      'Last Seen',
      'Last Updated',
      'Balance',
      'Regression Session',
      'Team',
      'Position',
      'TPE',
      'Forum Name',
      'Last Seen',
      'Last Updated',
      'Balance',
    ];
    List<String> rightColumnList = [
      'S38',
      'Florida Flamingos',
      'SS',
      '312',
      'nerji',
      'Today 02:58',
      '02/06/2023',
      '\$7,887234',
      'S38',
      'Florida Flamingos',
      'SS',
      '312',
      'nerji',
      'Today 02:58',
      '02/06/2023',
      '\$7,887234',
      'S38',
      'Florida Flamingos',
      'SS',
      '312',
      'nerji',
      'Today 02:58',
      '02/06/2023',
      '\$7,887234',
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
        const SizedBox(
          height: 34,
          width: 1,
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
      ]));
    }
    return Table(
      border: TableBorder.all(),
      columnWidths: const <int, TableColumnWidth>{
        // 0: IntrinsicColumnWidth(),
        0: FlexColumnWidth(),
        // 1: FixedColumnWidth(44),
        1: FlexColumnWidth(),
        2: FlexColumnWidth(),
        3: FlexColumnWidth(),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: rows,
    );
  }
}
