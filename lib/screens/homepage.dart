import 'package:bottom_bar/bottom_bar.dart';
import 'package:citcom_ui/common/color.dart';
import 'package:citcom_ui/common/images.dart';
import 'package:citcom_ui/common/widget/CustomTextfeild.dart';
import 'package:citcom_ui/common/widget/custmelevatedbutton.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPage = 0;
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Image.asset(NImages.sPlash),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10,left: 10,right: 10),
                child: CustomTextField(
                    prefixIcon: Icons.search,
                    labelText: "Search",
                    hintText: "Computer",
                suffixIcon: Icons.document_scanner_outlined),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                      itemBuilder: (c,i){
                        return Padding(
                          padding: const EdgeInsets.only(right: 7),
                          child: Container(
                            width: 332,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Image.asset("assets/images/1(2).png",fit: BoxFit.fill,),
                          ),
                        );
                      }),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    SizedBox(
                      height:232,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 232,
                            width: 156,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Image.asset("assets/images/Frame 26085518.png",fit: BoxFit.fill,),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 87.93,
                                width: 156,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Image.asset("assets/images/Frame 26085519.png",fit: BoxFit.fill,),
                              ),
                              Container(
                                height:132,
                                width: 153,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Image.asset("assets/images/Frame 26085521.png",fit: BoxFit.fill,),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      height: 84.4,
                      width: 331,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Image.asset("assets/images/Frame 26085523.png",fit: BoxFit.fill,),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 35,
                            width: 99,
                            child: CustomElvtdButn(buttonName: "Offer", onPressed: (){}, bgColor: NColor.red, buttonNameColor: NColor.white, buttonNameSize: 14)),
                        SizedBox(
                          height: 35,
                            width: 99,
                            child: CustomElvtdButn(buttonName: "Saved", onPressed: (){}, bgColor: 0xffE0DDDD, buttonNameColor: 0xff000000, buttonNameSize: 14)),
                        SizedBox(
                          height: 35,
                            width: 99,
                            child: CustomElvtdButn(buttonName: "Fashion", onPressed: (){}, bgColor: 0xffE0DDDD, buttonNameColor: 0xff000000, buttonNameSize: 14)),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 308,
                          width: 156,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Image.asset("assets/images/Product.png",fit: BoxFit.fill,),
                        ),
                        Container(
                          height: 308,
                          width: 156,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Image.asset("assets/images/Product1.png",fit: BoxFit.fill,),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: _currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        items: <BottomBarItem>[
          const BottomBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.blue,
          ),
          const BottomBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            title: Text('Favorites'),
            activeColor: Colors.red,
          ),
          BottomBarItem(
            icon: const Icon(Icons.delivery_dining),
            title: const Text('Account'),
            activeColor: Colors.greenAccent.shade700,
          ),
          const BottomBarItem(
            icon: Icon(Icons.person_pin),
            title: Text('Settings'),
            activeColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}
