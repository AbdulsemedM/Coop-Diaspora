import 'package:diaspora/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final List<ListItem> items = [
    ListItem('About', FontAwesomeIcons.info, false, []),
    ListItem('Get A Loan', FontAwesomeIcons.creditCard, false, []),
    ListItem('Money Transfer', FontAwesomeIcons.paperPlane, true,
        ['Option 1', 'Option 2', 'Option 3']),
    ListItem('Coop-Bank Alhuda', Icons.mosque, true,
        ['Option 1', 'Option 2', 'Option 3']),
    // Add more items as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors_selector.tertiaryColor,
      appBar: AppBar(
        backgroundColor: Colors_selector.tertiaryColor,
        elevation: 0, // Set elevation to 0 to remove shadow
        automaticallyImplyLeading: false,
        actions: [
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: Colors_selector.pair1,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 5)
              ],
            ),
            child: Material(
              color: Colors_selector.tertiaryColor,
              child: IconButton(
                icon: const Icon(
                  FontAwesomeIcons.times,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.78,
              // width: MediaQuery.of(context).size.width * 0.90,
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ExpansionTile(
                      title: Row(
                        children: [
                          Icon(items[index].icon),
                          SizedBox(width: 10),
                          Text(items[index].title),
                        ],
                      ),
                      children: items[index].isExpanded
                          ? items[index].options.map((option) {
                              return ListTile(
                                title: Text(option),
                                onTap: () {
                                  // Handle option tap here
                                },
                              );
                            }).toList()
                          : [],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      )),
    );
  }
}

class ListItem {
  final String title;
  final IconData icon;
  final bool isExpanded;
  final List<String> options;

  ListItem(this.title, this.icon, this.isExpanded, this.options);
}
