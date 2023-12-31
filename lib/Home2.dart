import 'package:diaspora/Menu.dart';
import 'package:diaspora/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  List<Product> productList = [
    Product('assets/images/Current.png', 'Current Account', 90, 15),
    Product('assets/images/Fixed.png', 'Fixed Time Deposit', 100, 10),
    Product('assets/images/Repart.png', 'Non-Repatriable Account', 10, 25),
    Product('assets/images/ECOLFL.png', 'ECOLFL Savings Account', 9, 50),
    Product('assets/images/internet.png', 'Internet Banking', 15, 5),
    // Product('assets/images/white_chair.jpg', 'Simple Chair', 20, 7),
    // Product('assets/images/white_lamp.jpg', 'Nice Lamp', 14, 10),
    // Product('assets/images/yellow_planter.jpg', 'Awesome Planter', 9, 25),
    // Product('assets/images/white_sofa.jpg', 'Blue & white Sofa', 50, 43),
    // Product('assets/images/white_planter.jpg', 'White Planter', 5, 25),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors_selector.tertiaryColor,
        elevation: 0, // Set elevation to 0 to remove shadow

        leading: Container(
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
                Icons.align_horizontal_left_outlined,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const Menu(),
                    
                  ),
                );
              },
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.15,
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 5, 8, 5),
                child: Text(
                  "Start your journey",
                  style: GoogleFonts.kanit(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.44,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0, 90, 8),
                child: Text(
                  " CoopBank Diaspora Banking is a platform designed for Ethiopians who do not reside in the country to have a safe, easy and convenient access to a wide range of products and services carefully curated to simplify cross-border banking.",
                  style: GoogleFonts.kanit(
                    fontSize: 15,
                    color: Colors_selector.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 80, vertical: 5),
                      child: GestureDetector(
                        // onTap: () {
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(builder: (context) => Confirm_OTP()),
                        //   );
                        // },
                        child: SizedBox(
                          height: 50, // Adjust the height as needed
                          child: Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: Colors_selector.primaryColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "Open an account",
                                style: GoogleFonts.kanit(
                                  color: Colors_selector.tertiaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 80, vertical: 5),
                      child: GestureDetector(
                        // onTap: () {
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(builder: (context) => Confirm_OTP()),
                        //   );
                        // },
                        child: SizedBox(
                          height: 50, // Adjust the height as needed
                          child: Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: Colors_selector.secondaryColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "Request Loan",
                                style: GoogleFonts.kanit(
                                  color: Colors_selector.tertiaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ScrollSnapList(
                itemBuilder: _buildListItem,
                itemCount: productList.length,
                itemSize: 150,
                onItemFocus: (index) {},
                dynamicItemSize: true,
              ),
            )
          ],
        ),
      )),
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    Product product = productList[index];
    return SizedBox(
      width: 200,
      height: 300,
      child: Card(
        elevation: 12,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Column(
            children: [
              Image.asset(
                product.imagePath,
                fit: BoxFit.cover,
                width: 200,
                height: 230,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                product.title,
                style: GoogleFonts.kanit(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Product {
  final String imagePath;

  final String title;

  final double cost;

  final int reviewCount;

  Product(this.imagePath, this.title, this.cost, this.reviewCount);
}
