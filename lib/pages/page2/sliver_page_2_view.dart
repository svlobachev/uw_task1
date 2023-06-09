import 'package:flutter/material.dart';
import 'package:uw_task1/pages/page2/page_2_table_gen.dart';

class MySliverPage2 extends StatelessWidget {
  const MySliverPage2({super.key});

  @override
  Widget build(BuildContext context) {
    TableGen2 tableGen2 = TableGen2();
    List<Widget> myWidgetsList = tableGen2.createTable();
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: SizedBox(
              child: Column(
                children: [
                  for(int i = 0; i < myWidgetsList.length; i++)
                    myWidgetsList[i],
                  // tableGen2.createTable(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
