import 'package:flutter/material.dart';
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;
import 'package:http/http.dart' as http;

/**
 *  PROJECT_NAME:-  project_structure
 *  Project Created by AGM Khair Sabbir
 *  DATE:- 25/2/24
 */
class DataScrapingWithDomScreen extends StatefulWidget {
  const DataScrapingWithDomScreen({super.key});

  @override
  State<DataScrapingWithDomScreen> createState() => _DataScrapingWithDomScreenState();
}

class _DataScrapingWithDomScreenState extends State<DataScrapingWithDomScreen> {
  List<String> info = [];
  List<String> location = [];

  // DataController dataController = Get.put(DataController());
  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async {
    // DataController dataController = Get.put(DataController());
    var response = await http.Client().get(Uri.parse('https://en.wikipedia.org/wiki/List_of_universities_in_Pakistan'));
    dom.Document document = parser.parse(response.body);

    for (int k = 0; k <= 3; k++) {
      var element = document.querySelectorAll('table>tbody')[k];
      var data = element.querySelectorAll('tr');
      for (int i = 1; i < data.length; i++) {
        info.add(data[i].children[0].text.toString().trim());
        location.add(data[i].children[1].text.toString().trim());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Scrap'),
      ),
      body: SafeArea(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: info.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                        info[index].toString().trim(),
                        style: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                      Text(
                        location[index].toString().trim(),
                        style: const TextStyle(fontSize: 15, color: Colors.blueGrey),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
