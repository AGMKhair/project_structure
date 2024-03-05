import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project_structure/architecture/routes/routes.dart';
import 'package:project_structure/resourse/widget/primary_button_widget.dart';
import 'package:web_scraper/web_scraper.dart';

/**
 *  PROJECT_NAME:-  project_structure
 *  Project Created by AGM Khair Sabbir
 *  DATE:- 23/2/24
 */

class WebScraperApp extends StatefulWidget {
  @override
  _WebScraperAppState createState() => _WebScraperAppState();
}

class _WebScraperAppState extends State<WebScraperApp> {
  // initialize WebScraper by passing base url of website
  final webScraper = WebScraper('https://webscraper.io');

  // Response of getElement is always List<Map<String, dynamic>>
  List<Map<String, dynamic>>? productNames;
  late List<Map<String, dynamic>> productDescriptions;

  void fetchProducts() async {
    var request = http.Request('GET', Uri.parse('https://webscraper.io/test-sites/e-commerce/allinone/computers/laptops'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
    // Loads web page and downloads into local state of library
    if (await webScraper.loadFullURL('https://webscraper.io/test-sites/e-commerce/allinone/computers/laptops')) {
      setState(() {
        // getElement takes the address of html tag/element and attributes you want to scrap from website
        // it will return the attributes in the same order passed
        productNames = webScraper.getElement('div.thumbnail > div.caption > h4 > a.title', ['href', 'title']);
        productDescriptions = webScraper.getElement('div.thumbnail > div.caption > p.description', ['class']);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    // Requesting to fetch before UI drawing starts
    fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Product Catalog'),
          ),
          body: SafeArea(
              child: productNames == null
                  ? Center(
                      child: CircularProgressIndicator(), // Loads Circular Loading Animation
                    )
                  : ListView.builder(
                      itemCount: productNames!.length,
                      itemBuilder: (BuildContext context, int index) {
                        // Attributes are in the form of List<Map<String, dynamic>>.
                        Map<String, dynamic> attributes = productNames![index]['attributes'];
                        return ExpansionTile(
                          title: Text(attributes['title']),
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: <Widget>[
                                  PrimaryButton(
                                    label: 'Fetch Data',
                                    isDisabled: false,
                                    onPressed: () {
                                      fetchProducts();
                                      // Navigator.of(context).pop(ModalRoute.withName(Routes.homeScreen));
                                      // Navigator.of(context).popUntil(ModalRoute.withName(Routes.homeScreen));
                                    },
                                  ),
                                  Container(
                                    child: Text(productDescriptions[index]['title']),
                                    margin: EdgeInsets.only(bottom: 10.0),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      // uses UI Launcher to launch in web browser & minor tweaks to generate url
                                      // launch(webScraper.baseUrl! + attributes['href']);
                                    },
                                    child: Text(
                                      'View Product',
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        );
                      }))),
    );
  }
}

class DataScraperScreen extends StatefulWidget {
  const DataScraperScreen({super.key});

  @override
  State<DataScraperScreen> createState() => _DataScraperScreenState();
}

class _DataScraperScreenState extends State<DataScraperScreen> {
  String titleList = "Data Scraping";

  @override
  void initState() {
    // TODO: implement initState
    () async {
      initChaptersTitleScrap();
    };
    super.initState();
  }

  void initChaptersTitleScrap() async {
    const rawUrl = 'https://unacademy.com/course/gravitation-for-iit-jee/D5A8YSAJ';

    final webScraper = WebScraper('https://unacademy.com');
    final endpoint = rawUrl.replaceAll(r'https://unacademy.com', '');
    if (await webScraper.loadWebPage(endpoint)) {
      final titleElements = webScraper.getElement(
          'div.Week__Wrapper-sc-1qeje5a-2 > a.Link__StyledAnchor-sc-1n9f3wx-0 '
          '> div.ItemCard__ItemInfo-xrh60s-1 '
          '> h6.H6-sc-1gn2suh-0',
          []);
      print(titleElements);
      final titleList = <String>[];
      titleElements.forEach((element) {
        final title = element['title'];
        titleList.add('$title');
      });
      print(titleList);
      if (mounted)
        setState(() {
          titleList.forEach((element) {
            this.titleList = this.titleList + "\n " + element;
          });
        });
    } else {
      print('Cannot load url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Test Project"),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                "$titleList",
                textAlign: TextAlign.center,
              ),
              PrimaryButton(
                label: 'Data Fetch',
                isDisabled: false,
                onPressed: () async {
                  final webScraper = WebScraper('https://webscraper.io');
                  if (await webScraper.loadFullURL('/test-sites/e-commerce/allinone')) {
                    var elements = webScraper.getElement('h3.title > a.caption', ['href']);
                    print(elements);
                  }
                  // PersistentNavBarNavigator.pushNewScreenWithRouteSettings(
                  //   context,
                  //   settings: RouteSettings(name: Routes.twoScreen),
                  //   screen: TwoScreen(),
                  //   withNavBar: true,
                  //   pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  // );
                },
              ),
              PrimaryButton(
                label: 'Previous Screen',
                isDisabled: false,
                onPressed: () {
                  Navigator.of(context).pop(ModalRoute.withName(Routes.homeScreen));
                  // Navigator.of(context).popUntil(ModalRoute.withName(Routes.homeScreen));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
