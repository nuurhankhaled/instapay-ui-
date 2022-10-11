import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instapayyyyyyyy/managedacc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var size, height, width;
  int activeIndex = 1;
  var items = ["images/slide.jpg", "images/slide.jpg", "images/slide.jpg"];

  @override
  Widget build(BuildContext context) {
    size = MediaQuery
        .of(context)
        .size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      body: ListView(
        children: [
          Container(
            height: height * 0.3,
            width: width * 0.2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/home.png"), fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0, top: 23),
                            child: Text(
                              "Good Morning",
                              style: TextStyle(
                                  fontFamily: "NunitoS",
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0, top: 10),
                            child: Text(
                              "nuurhan al-saadany",
                              style: TextStyle(
                                fontFamily: "NunitoS",
                                fontSize: 19,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.purpleAccent.withOpacity(0.355),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications_sharp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 38),
                  child: Center(
                    child: CarouselSlider.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index, realIndex) {
                        final urlImages = items[index];
                        return buildImage(urlImages, index);
                      },
                      options: CarouselOptions(height: 150,
                          reverse: false,
                          autoPlay: true,
                          enableInfiniteScroll: false,
                          autoPlayInterval: Duration(seconds: 8),
                          onPageChanged: (index, reason) =>
                              setState(() => activeIndex = index)
                      ),),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                height: 35, child: buildIndicator(),),
            ),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 23),
                  child: Text(
                    "Accounts",
                    style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 15,
                        color: Colors.black,
                         fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 23.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (Context)=> ManagedAcc()));
                    },
                    height: 50,
                    minWidth: 80,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        "Manage",
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,right: 15, top: 15),
            child: Container(
              height:90,
              width: width*0.95,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300,width: 1.5),
              )
              ,
               child: Center(
                 child: Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 25.0),
                       child: Image.asset("images/bank.png",width: 45,color: Colors.deepOrange[900],),
                     ),
                     Align(
                       alignment: Alignment.topLeft,
                       child: Padding(
                         padding: const EdgeInsets.only(left: 14.0, top: 34),
                         child: Text(
                           "No bank account are available",
                           style: TextStyle(
                               fontFamily: "Nunito",
                               fontSize: 15,
                               color: Colors.black,
                               fontWeight: FontWeight.bold),
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 20),
                       child: Container(
                         width: 40,
                         height: 40,
                         decoration: BoxDecoration(
                             color: Colors.purple.withOpacity(0.2),
                             borderRadius: BorderRadius.circular(5)),
                         child: IconButton(
                             icon: Icon(
                               Icons.add,
                               size: 25,
                               color: Colors.black,
                             ),
                             onPressed: () {
                             }),
                       ),
                     ),
                   ],
                 ),
               ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 23),
                  child: Text(
                    "Services",
                    style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 23.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (Context)=> ManagedAcc()));
                    },
                    height: 50,
                    minWidth: 80,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        "View All",
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0,top: 20),
                child: Container(
                  height:120,
                  width: width*0.3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  )
                  ,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Center(
                          child: Container(
                            height:60,
                            width: width*0.14,
                            decoration: BoxDecoration(
                              color: Colors.deepOrange.shade100.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(14),
                            )
                            ,
                            child: Icon(Icons.arrow_circle_up_sharp,color: Colors.deepOrange,),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only( top: 10),
                          child: Text(
                            "Send money",
                            style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 12,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ),

              ),
              Padding(
                padding: const EdgeInsets.only(left: 9.0,top: 20),
                child: Container(
                  height:120,
                  width: width*0.3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  )
                  ,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Center(
                          child: Container(
                            height:60,
                            width: width*0.14,
                            decoration: BoxDecoration(
                              color: Colors.deepOrange.shade100.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(14),
                            )
                            ,
                            child: Icon(Icons.arrow_circle_down_sharp,color: Colors.deepOrange,),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only( top: 10),
                          child: Text(
                            "Collect money",
                            style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 12,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(left: 9.0,top: 20),
                child: Container(
                  height:120,
                  width: width*0.3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  )
                  ,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Center(
                          child: Container(
                            height:60,
                            width: width*0.14,
                            decoration: BoxDecoration(
                              color: Colors.deepOrange.shade100.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(14),
                            )
                            ,
                            child: Icon(Icons.handshake_outlined,color: Colors.deepOrange,),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only( top: 10),
                          child: Text(
                            "Donations",
                            style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 12,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0,top: 10),
                child: Container(
                  height:120,
                  width: width*0.3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  )
                  ,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Center(
                          child: Container(
                            height:60,
                            width: width*0.14,
                            decoration: BoxDecoration(
                              color: Colors.deepOrange.shade100.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(14),
                            )
                            ,
                            child: Icon(Icons.account_balance_sharp,color: Colors.deepOrange,),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only( top: 10),
                          child: Text(
                            "Manage Accounts",
                            style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 12,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(left: 9.0,top: 10),
                child: Container(
                  height:120,
                  width: width*0.3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  )
                  ,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Center(
                          child: Container(
                            height:60,
                            width: width*0.14,
                            decoration: BoxDecoration(
                              color: Colors.deepOrange.shade100.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(14),
                            )
                            ,
                            child: Icon(Icons.compare_arrows_sharp,color: Colors.deepOrange,),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only( top: 10),
                          child: Text(
                            "Transaction History",
                            style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 12,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(left: 9.0,top: 10),
                child: Container(
                  height:120,
                  width: width*0.3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  )
                  ,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Center(
                          child: Container(
                            height:60,
                            width: width*0.14,
                            decoration: BoxDecoration(
                              color: Colors.deepOrange.shade100.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(14),
                            )
                            ,
                            child: Icon(Icons.segment,color: Colors.deepOrange,),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only( top: 10),
                          child: Text(
                            "Pending Request",
                            style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 12,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 23),
                  child: Text(
                    "Last Transactions",
                    style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 23.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (Context)=> ManagedAcc()));
                    },
                    height: 50,
                    minWidth: 80,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        "View All",
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15,bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Icon(Icons.arrow_downward_rounded,size: 80,color: Colors.deepOrange,)),
                Center(child: Icon(Icons.arrow_upward_rounded,size: 80,color: Colors.purple,)),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Text(
                "No transaction available",
                style: TextStyle(fontFamily: "Cairo", fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImage(String urlImages, int index) =>
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10),

        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(urlImages, fit: BoxFit.fill, width: 450,)),
      );


  Widget buildIndicator() =>
      AnimatedSmoothIndicator(activeIndex: activeIndex, count: items.length,effect: SlideEffect(
        dotWidth: 10,
        dotHeight: 10,
        dotColor: Colors.deepOrange.shade100,
        activeDotColor: Colors.deepOrange,

      ),);

}