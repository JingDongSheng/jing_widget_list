import 'package:flutter/material.dart';

class DataTableWidget extends StatefulWidget {
  @override
  _DataTableWidgetState createState() => _DataTableWidgetState();
}

class _DataTableWidgetState extends State<DataTableWidget> {
  static const int numItems = 3;
  List<bool> selected = List<bool>.generate(numItems, (int index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DataTable"),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text('Number'),
                ),
              ],
              rows: List<DataRow>.generate(
                numItems,
                (int index) => DataRow(
                  color: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.selected)) {
                      return Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.08);
                    }
                    // Even rows will have a grey color.
                    if (index.isEven) {
                      return Colors.grey.withOpacity(0.3);
                    }
                    return Colors.grey.withOpacity(0.9); // Use default value for other states and odd rows.
                  }),
                  cells: <DataCell>[DataCell(Text('Row $index'))],
                  selected: selected[index],
                  onSelectChanged: (bool? value) {
                    setState(() {
                      selected[index] = value!;
                    });
                  },
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          DataTable(
            sortColumnIndex: 0,
            sortAscending: true, //可以排序
            columns: [
              DataColumn(label: Text('Name')),
              DataColumn(
                label: Text('Age'),
                numeric: true, //强制向右对其
              ),
            ],
            rows: [
              DataRow(cells: [
                DataCell(
                  Text('Dash'),
                  showEditIcon: true, //提示可以编辑
                ),
                DataCell(
                  Text('20'),
                ),
              ]),
              DataRow(cells: [
                DataCell(
                  Text('Fill in name'),
                  placeholder: true, //提示没有内容，
                ),
                DataCell(
                  Text('30'),
                ),
              ])
            ],
          ),
        ],
      ),
    );
  }
}
