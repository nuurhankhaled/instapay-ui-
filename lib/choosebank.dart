import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instapayyyyyyyy/home.dart';

class ChooseBank extends StatelessWidget {
  var size,height,width;
  @override
  Widget build(BuildContext context) {
    size= MediaQuery.of(context).size;
    height= size.height;
    width= size.width;
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (Context)=> HomePage()));
                  },
                  height: 50,
                  minWidth: 80,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      "Skip to Home",
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Nunito",
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 22),
                child: Text(
                  "Welcome to",
                  style: TextStyle(fontFamily: "Cairo", fontSize: 17),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Center(
                  child: Image.asset(
                "images/instapay.png",
                width: 270,
              )),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Select your Bank",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  width: width*0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade300,width: 1.5),
                  ),
                  child: Flexible(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.black26,
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: TextField(
                              cursorColor: Colors.deepOrange,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search for specific Bank Name',
                                hintStyle: TextStyle(
                                  color: Colors.black45,
                                  fontFamily: "Nunito",
                                  fontWeight: FontWeight.bold,

                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Flexible(child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15, top: 15),
                    child: Container(
                      height:80,
                      width: width*0.95,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300,width: 1.5),
                      )
                      ,
                      child: Center(
                        child: ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(  decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300,width: 2),
                              borderRadius: BorderRadius.circular(5),

                            ),child :Image.asset("images/alex.jpg",width: 40,),),
                          ),
                          title:  Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              "ALEXBANK",
                              style: TextStyle(fontFamily: "Nunito", fontSize: 15, color: Colors.black,
                              fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15, top: 10),
                    child: Container(
                      height:80,
                      width: width*0.95,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300,width: 1.5),
                      )
                      ,
                      child: Center(
                        child: ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(  decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300,width: 2),
                              borderRadius: BorderRadius.circular(5),

                            ),child :Image.asset("images/aaib.png",width: 40,),),
                          ),
                          title:  Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Arab African International Bank",
                              style: TextStyle(fontFamily: "Nunito", fontSize: 15, color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15, top: 10),
                    child: Container(
                      height:80,
                      width: width*0.95,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300,width: 1.5),
                      )
                      ,
                      child: Center(
                        child: ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(  decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300,width: 2),
                              borderRadius: BorderRadius.circular(5),

                            ),child :Image.asset("images/ab.jpg",width: 40,height: 40,),),
                          ),
                          title:  Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Arab Bank",
                              style: TextStyle(fontFamily: "Nunito", fontSize: 15, color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15, top: 10),
                    child: Container(
                      height:80,
                      width: width*0.95,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300,width: 1.5),
                      )
                      ,
                      child: Center(
                        child: ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(  decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300,width: 2),
                              borderRadius: BorderRadius.circular(5),

                            ),child :Image.asset("images/bdq.jpg",width: 40,height: 37,),),
                          ),
                          title:  Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Banque Du Caire",
                              style: TextStyle(fontFamily: "Nunito", fontSize: 15, color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15, top: 10),
                    child: Container(
                      height:80,
                      width: width*0.95,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300,width: 1.5),
                      )
                      ,
                      child: Center(
                        child: ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(  decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300,width: 2),
                              borderRadius: BorderRadius.circular(5),

                            ),child :Image.asset("images/bs.jpg",width: 40,),),
                          ),
                          title:  Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Banque Misr",
                              style: TextStyle(fontFamily: "Nunito", fontSize: 15, color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15, top: 10),
                    child: Container(
                      height:80,
                      width: width*0.95,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300,width: 1.5),
                      )
                      ,
                      child: Center(
                        child: ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(  decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300,width: 2),
                              borderRadius: BorderRadius.circular(5),

                            ),child :Image.asset("images/cboe.png",width: 40,),),
                          ),
                          title:  Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Central Bank Of Egypt",
                              style: TextStyle(fontFamily: "Nunito", fontSize: 15, color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15, top: 10),
                    child: Container(
                      height:80,
                      width: width*0.95,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300,width: 1.5),
                      )
                      ,
                      child: Center(
                        child: ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(  decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300,width: 2.3),
                              borderRadius: BorderRadius.circular(5),

                            ),child :Image.asset("images/cib.png",width: 40,),),
                          ),
                          title:  Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Comercial International Bank",
                              style: TextStyle(fontFamily: "Nunito", fontSize: 15, color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15, top: 10),
                    child: Container(
                      height:80,
                      width: width*0.95,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300,width: 1.5),
                      )
                      ,
                      child: Center(
                        child: ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(  decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300,width: 2.3),
                              borderRadius: BorderRadius.circular(5),

                            ),child :Image.asset("images/eg.png",width: 40,),),
                          ),
                          title:  Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Egyptian Gulf Bank",
                              style: TextStyle(fontFamily: "Nunito", fontSize: 15, color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15, top: 10),
                    child: Container(
                      height:80,
                      width: width*0.95,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300,width: 1.5),
                      )
                      ,
                      child: Center(
                        child: ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(  decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300,width: 2.3),
                              borderRadius: BorderRadius.circular(5),

                            ),child :Image.asset("images/nboe.png",width: 40,),),
                          ),
                          title:  Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              "National Bank of Egypt",
                              style: TextStyle(fontFamily: "Nunito", fontSize: 15, color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15, top: 10),
                    child: Container(
                      height:80,
                      width: width*0.95,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300,width: 1.5),
                      )
                      ,
                      child: Center(
                        child: ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(  decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300,width: 2.3),
                              borderRadius: BorderRadius.circular(5),

                            ),child :Image.asset("images/qnb.jpg",width: 40,),),
                          ),
                          title:  Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              "QNB ALAHLI",
                              style: TextStyle(fontFamily: "Nunito", fontSize: 15, color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15, top: 10,bottom: 15),
                    child: Container(
                      height:80,
                      width: width*0.95,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300,width: 1.5),
                      )
                      ,
                      child: Center(
                        child: ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(  decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300,width: 2.3),
                              borderRadius: BorderRadius.circular(5),

                            ),child :Image.asset("images/sb.png",width: 40,),),
                          ),
                          title:  Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Societe Arabe International De Banque",
                              style: TextStyle(fontFamily: "Nunito", fontSize: 15, color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
