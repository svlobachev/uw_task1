import 'package:flutter/material.dart';
import 'package:uw_task1/pages/page_2_table_gen.dart';

class MySliverPage2 extends StatelessWidget {
  const MySliverPage2({super.key});

  @override
  Widget build(BuildContext context) {
    TableGen2 tableGen2 = TableGen2();
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: SizedBox(
              child: Column(
                children: [
                  tableGen2.createTable(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
