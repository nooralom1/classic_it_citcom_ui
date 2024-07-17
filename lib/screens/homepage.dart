import 'package:citcom_ui/common/color.dart';
import 'package:citcom_ui/common/images.dart';
import 'package:citcom_ui/common/widget/CustomTextfeild.dart';
import 'package:citcom_ui/common/widget/custmelevatedbutton.dart';
import 'package:citcom_ui/models/all_models.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: CustomTextField(
                    prefixIcon: Icons.search,
                    labelText: "Search",
                    hintText: "Computer",
                    suffixIcon: Icons.document_scanner_outlined),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: 160,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (c, i) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 7),
                          child: Container(
                            width: 332,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Image.asset(
                              "assets/images/1(2).png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      }),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 232,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 232,
                            width: 156,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Image.asset(
                              "assets/images/Frame 26085518.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 87.93,
                                width: 156,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Image.asset(
                                  "assets/images/Frame 26085519.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                height: 132,
                                width: 153,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Image.asset(
                                  "assets/images/Frame 26085521.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 84.4,
                      width: 331,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Image.asset(
                        "assets/images/Frame 26085523.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                            height: 35,
                            width: 99,
                            child: CustomElvtdButn(
                                buttonName: "Offer",
                                onPressed: () {},
                                bgColor: NColor.red,
                                buttonNameColor: NColor.white,
                                buttonNameSize: 14)),
                        SizedBox(
                            height: 35,
                            width: 99,
                            child: CustomElvtdButn(
                                buttonName: "Saved",
                                onPressed: () {},
                                bgColor: 0xffE0DDDD,
                                buttonNameColor: 0xff000000,
                                buttonNameSize: 14)),
                        SizedBox(
                            height: 35,
                            width: 99,
                            child: CustomElvtdButn(
                                buttonName: "Fashion",
                                onPressed: () {},
                                bgColor: 0xffE0DDDD,
                                buttonNameColor: 0xff000000,
                                buttonNameSize: 14)),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 312,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemCount: twoProducts.length,
                          itemBuilder: (c, i) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: SizedBox(
                                height: 350,
                                width: 156,
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(twoProducts[i].imagePath),
                                      Text(
                                        twoProducts[i].imageName,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(twoProducts[i].brandName),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Text(twoProducts[i].priceLogo),
                                          Text(
                                            twoProducts[i].price,
                                            style: const TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Image.asset(twoProducts[i].offerPrice)
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "TOP ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "CATEGORY",
                          style: TextStyle(
                              color: Color(0xffFE5A1B),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Image.asset("assets/icons/handbag.2ef168de 1.png"),
                            const Text("Bags")
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                                "assets/icons/beauty_product.d03025de 1.png"),
                            const Text("Beauty\nProducts")
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset("assets/icons/clothing.e8eb6793 1.png"),
                            const Text("Women")
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                                "assets/icons/mens_clothing.9b301c9b 1.png"),
                            const Text("Man")
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset("assets/icons/shoes.089eac13 1.png"),
                            const Text("Shoes")
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset("assets/icons/sunglass.838db5be 1.png"),
                            const Text("Eyewear")
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Image.asset("assets/icons/mobile.258e8d8e 1.png"),
                            const Text("Phons")
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                                "assets/icons/watches-clock-svgrepo-com 1.png"),
                            const Text("Watches")
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                                "assets/icons/electronics.64e56e72 1.png"),
                            const Text("Electronics")
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 59,
                      color: const Color(0xffEEEDEB),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/icons/Cash_On_Delivery.png"),
                              const SizedBox(
                                width: 5,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Cash on\nDelivery"),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset("assets/icons/Delivery.png"),
                              const SizedBox(
                                width: 5,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Free Delivery.\nFree Returns"),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                  "assets/icons/offer_or_Lowest_Price.png"),
                              const SizedBox(
                                width: 5,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Lowest\nPrice"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Image.asset("assets/images/Frame 26085541.png"),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 39,
                      color: const Color(0xffFE5A1B),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "Top Selling",
                              style: TextStyle(
                                  color: Color(
                                    0xffFFFFFF,
                                  ),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 140,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image.asset("assets/images/products/saree.png"),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Beautiful Deshi Sharee\n- 1042",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                              const Text("৳ 2,400",style: TextStyle(fontSize: 20),),
                              const Text("Stock: 230"),
                              Image.asset("assets/images/shipping Button.png"),
                              Image.asset("assets/images/Frame 26080124.png"),
                            ],
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.more_vert),
                              Icon(Icons.favorite_border),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    SizedBox(
                      height: 140,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image.asset("assets/images/products/light.png"),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("5M LED Strip 5050\nLights RGB LED Lights\nString Lighting Flexi...",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                              const Text("৳ 350",style: TextStyle(fontSize: 20),),
                              const Text("Stock: 19"),
                              Image.asset("assets/images/shipping Button.png"),
                              Image.asset("assets/images/Frame 26080124.png"),
                            ],
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.more_vert),
                              Icon(Icons.favorite_border),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    SizedBox(
                      height: 140,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image.asset("assets/images/products/blutooth.png"),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Beautiful Deshi Sharee\n- 1042",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                              const Text("৳ 1,700",style: TextStyle(fontSize: 20),),
                              const Text("Stock: 230"),
                              Image.asset("assets/images/shipping Button.png"),
                              Image.asset("assets/images/Frame 26080124.png"),
                            ],
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.more_vert),
                              Icon(Icons.favorite_border),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    SizedBox(
                      height: 140,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image.asset("assets/images/products/watch.png"),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("5M LED Strip 5050\nLights RGB LED Lights\nString Lighting Flexi...",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                              const Text("৳ 64",style: TextStyle(fontSize: 20),),
                              const Text("Stock: 19"),
                              Image.asset("assets/images/shipping Button.png"),
                              Image.asset("assets/images/Frame 26080124.png"),
                            ],
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.more_vert),
                              Icon(Icons.favorite_border),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    SizedBox(
                      height: 140,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 140,
                            width: 140,
                            child: Card(
                              child: Image.asset("assets/images/products/shoes.png"),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("5M LED Strip 5050\nLights RGB LED Lights\nString Lighting Flexi...",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                              const Text("৳ 270",style: TextStyle(fontSize: 20),),
                              const Text("Stock: 19"),
                              Image.asset("assets/images/shipping Button.png"),
                              Image.asset("assets/images/Frame 26080124.png"),
                            ],
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.more_vert),
                              Icon(Icons.favorite_border),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("More Related Product",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 300,
                          width: 156,
                          child: Column(
                            children: [
                              Container(
                                height: 156,
                                width: 156,
                                color: const Color(0xffEEEDEB),
                                child: Center(
                                  child: SizedBox(
                                    height: 132,
                                    width: 132,
                                    child: Image.asset("assets/images/products/Frame 26080171.png"),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 156,
                                height: 128,
                                child: Card(
                                  child: Image.asset("assets/images/details.png"),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 300,
                          width: 156,
                          child: Column(
                            children: [
                              Container(
                                height: 156,
                                width: 156,
                                color: const Color(0xffEEEDEB),
                                child: Center(
                                  child: SizedBox(
                                    height: 132,
                                    width: 132,
                                    child: Image.asset("assets/images/products/Frame 26080171.png"),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 156,
                                height: 128,
                                child: Card(
                                  child: Image.asset("assets/images/details.png"),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 300,
                          width: 156,
                          child: Column(
                            children: [
                              Container(
                                height: 156,
                                width: 156,
                                color: const Color(0xffEEEDEB),
                                child: Center(
                                  child: SizedBox(
                                    height: 132,
                                    width: 132,
                                    child: Image.asset("assets/images/products/Frame 26080171.png"),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 156,
                                height: 128,
                                child: Card(
                                  child: Image.asset("assets/images/details.png"),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 300,
                          width: 156,
                          child: Column(
                            children: [
                              Container(
                                height: 156,
                                width: 156,
                                color: const Color(0xffEEEDEB),
                                child: Center(
                                  child: SizedBox(
                                    height: 132,
                                    width: 132,
                                    child: Image.asset("assets/images/products/Frame 26080171.png"),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 156,
                                height: 128,
                                child: Card(
                                  child: Image.asset("assets/images/details.png"),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 300,
                          width: 156,
                          child: Column(
                            children: [
                              Container(
                                height: 156,
                                width: 156,
                                color: const Color(0xffEEEDEB),
                                child: Center(
                                  child: SizedBox(
                                    height: 132,
                                    width: 132,
                                    child: Image.asset("assets/images/products/Frame 26080171.png"),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 156,
                                height: 128,
                                child: Card(
                                  child: Image.asset("assets/images/details.png"),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 300,
                          width: 156,
                          child: Column(
                            children: [
                              Container(
                                height: 156,
                                width: 156,
                                color: const Color(0xffEEEDEB),
                                child: Center(
                                  child: SizedBox(
                                    height: 132,
                                    width: 132,
                                    child: Image.asset("assets/images/products/Frame 26080171.png"),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 156,
                                height: 128,
                                child: Card(
                                  child: Image.asset("assets/images/details.png"),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      height: 68,
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/icons/bkash.png"),
                            const Text("Earn up to a 15% discount when\nyou use your bKash.")
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    SizedBox(
                      height: 68,
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/icons/mastercard.png"),
                            const Text("Earn up to a 10% discount when\nyou use your Mastercard.")
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    SizedBox(
                      height: 68,
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/icons/visa.png"),
                            const Text("Earn up to a 10% discount when\nyou use your Visa card.")
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Text("We’d love to hear what you think!",style: TextStyle(color: Color(0xffFE5A1B),fontSize: 10),),
                    const SizedBox(height: 20,),
                    Container(
                      height: 40,
                      width: 129,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(color: const Color(0xffFE5A1B))),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.favorite_border,color: Color(0xffFE5A1B)),
                          SizedBox(width: 5,),
                          Text("Feedback",style: TextStyle(color: Color(0xffFE5A1B)),)
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}