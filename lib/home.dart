import 'package:flutter/material.dart';
import 'package:notetech_test/provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Homeprovider>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          DataTable(
              columns: const [
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Age')),
                DataColumn(label: Text('Gender')),
              ],
              rows: provider.viewdata
                  .asMap()
                  .map((key, value) => MapEntry(
                        key,
                        DataRow(
                          cells: [
                            DataCell(
                              Text(value['name']),
                            ),
                            DataCell(
                              Text(value['age'].toString()),
                            ),
                            DataCell(
                              Text(value['gender']),
                            ),
                          ],
                        ),
                      ))
                  .values
                  .toList()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    provider.filtermale();
                  },
                  child: const Text("male")),
              ElevatedButton(
                  onPressed: () {
                    provider.filterfemale();
                  },
                  child: const Text("female")),
              ElevatedButton(
                  onPressed: () {
                    provider.sortascend();
                  },
                  child: const Text("ascending")),
              ElevatedButton(
                  onPressed: () {
                    provider.sortdesc();
                  },
                  child: const Text("descending"))
            ],
          )
        ],
      ),
    );
  }
}
