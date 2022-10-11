import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instapayyyyyyyy/choosebank.dart';

class Register extends StatelessWidget {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: ListView(
        children: [
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
            padding: const EdgeInsets.only(top: 17),
            child: Image.asset(
              "images/instapay.png",
              width: 55,
              height: 55,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 23),
              child: Text(
                "Create Account",
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
              padding: const EdgeInsets.only(top: 23),
              child: Text(
                "  Your mobile has been registered \nEnter the below details to continue",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0, top: 36),
              child: Container(
                height: height * 0.519,
                width: width * 0.839,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black12, width: 2),
                ),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 23),
                      child: Text(
                        "Name",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30.0, right: 30, top: 2),
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.black12,
                            ),
                          ),
                          child: Flexible(
                            child: Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: TextField(
                                cursorColor: Colors.deepOrange,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Full Name",
                                  hintStyle: TextStyle(
                                      color: Colors.black45,
                                      fontFamily: "Nunito",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 10),
                      child: Text(
                        "Birhdate",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30.0, right: 30, top: 2),
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.black12,
                            ),
                          ),
                          child: Flexible(
                            child: Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: TextField(
                                cursorColor: Colors.deepOrange,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Ex. 21 Oct 1993",
                                  hintStyle: TextStyle(
                                      color: Colors.black45,
                                      fontFamily: "Nunito",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      Icons.calendar_today_outlined,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 10),
                      child: Text(
                        "Email",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30.0, right: 30, top: 2),
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.black12,
                            ),
                          ),
                          child: Flexible(
                            child: Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: TextField(
                                cursorColor: Colors.deepOrange,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Username@email.com",
                                  hintStyle: TextStyle(
                                      color: Colors.black45,
                                      fontFamily: "Nunito",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0, top: 17),
                            child: Center(
                              child: Container(
                                width: width * 0.335,
                                height: height * 0.0553,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: Colors.black12,
                                    width: 2,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 22.5),
                                      child: Icon(
                                        Icons.man,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        "Male",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontFamily: "Nunito",
                                            fontSize: 16.5,
                                            color: Colors.black45),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 25, top: 17),
                            child: Center(
                              child: Container(
                                width: width * 0.335,
                                height: height * 0.0553,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: Colors.black12,
                                    width: 2,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 17),
                                      child: Icon(
                                        Icons.woman,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: Text(
                                        "Female",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontFamily: "Nunito",
                                            fontSize: 16.5,
                                            color: Colors.black45),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 19),
                      child: Text(
                        "city",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30.0, right: 30, top: 2),
                      child: Center(
                        child: Container(
                          height: height * 0.04,
                          width: width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.black12,
                            ),
                          ),
                          //   child: Flexible(
                          //     child: Padding(
                          //       padding: EdgeInsets.only(left: 15),
                          //       child: DropdownButton(
                          //         value: defaultValue,
                          //         icon: Icon(Icons.arrow_downward),
                          //         items: items.map((String items) {
                          //           return DropdownMenuItem(
                          //             value: items,
                          //             child: Text(items),
                          //           );
                          //         }).toList(),
                          //         onChanged: (String? newValue) {
                          //           set(() {
                          //             defaultValue = newValue!;
                          //           });
                          //         },
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: Text(
                              "Cairo",
                              style: TextStyle(
                                fontFamily: "Cairo",
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.black54,
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
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 15),
            child: Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.deepOrange,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "By registering, you agree to ",
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
                Text(
                  "terms & conditions. ",
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 25),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.purple.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(5)),
                    child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_sharp,
                          size: 25,
                          color: Colors.purple,
                        ),
                        onPressed: () {
                          SystemNavigator.pop();
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 33.0,bottom: 15),
                  child: Container(
                    width: width*0.61,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.deepPurpleAccent,
                            Colors.deepPurple,
                          ],
                        )),
                    child: Center(
                      child: MaterialButton(
                        minWidth: width*0.61,
                        height: 50,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (Context)=> ChooseBank()));
                        },
                        child: Text("Register",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Nunito",
                              fontSize: 16
                          ),),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
