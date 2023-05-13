import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:project_medical/colors.dart';

class AppointScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/ 2.1,
              decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "images/doctor1.jpg",
                ),
                fit: BoxFit.cover,
              ),
              ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                iColor.withOpacity(0.9),
                iColor.withOpacity(0),
                iColor.withOpacity(0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 30, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.all(8),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Icon( Icons.arrow_back,
                          color: iColor,
                        size: 28
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 4,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Icon(
                        Icons.favorite_outline,
                        color: iColor,
                        size: 28,
                      ),
                    ),
                  )
                ],
              ),
              ),
              SizedBox(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Patients",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                        SizedBox(height: 8),
                        Text("1.8K",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Experience",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                        SizedBox(height: 8),
                        Text("10 yr",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Rating",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                        SizedBox(height: 8),
                        Text("4.9",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
            ),
            SizedBox(height: 10),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Dr Green",style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: iColor,
                ),),
                SizedBox(height: 5),
                Row(children: [
                 Icon(MdiIcons.heartPulse, color: Colors.pinkAccent, size: 28),
                 SizedBox(width: 5),
                 Text("Surgeon",
                 style: TextStyle(
                   fontSize: 17,
                   color: Colors.black.withOpacity(0.6),
                 ),
                 ),
                ],
                ),
                SizedBox(height: 15),
                Text("I am a Dr Green, a surgeon at the Health Clinic, "
                    "I will be pleased to meet you at any time that is convenient to you",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.7),
                ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 15),
                Text("Book Date",style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.w600,
                ),),
                SizedBox(height: 8),
                Container(
                  height: 70,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: ( context, index) {
                      return InkWell(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                              padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 25),
                        decoration: BoxDecoration(
                          color: index == 1 ? iColor : Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              spreadRadius: 2,
                            ),
                          ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("${index + 8}",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: index == 1 ? Colors.white : Colors.black.withOpacity(0.2),
                                  ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "DEC",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: index == 1 ? Colors.white : Colors.black.withOpacity(0.2),
                                  ),),
                                ],
                              ),
                              ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 5),
                Text("Book Time",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.w600,
                ),
                ),
                SizedBox(height: 8),
                Container(
                  height: 60,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index){
                 return Container(
                   margin: EdgeInsets.symmetric ( horizontal: 8, vertical: 5),
                   padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                   decoration: BoxDecoration(
                     color: index == 2 ? iColor : Colors.white,
                     borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                       BoxShadow(
                     color: Colors.black12,
                       blurRadius: 4,
                       spreadRadius: 2,
                       ),
                   ],
                   ),
                   child: Center(
                     child: Text(
                       "${index + 8}: 00 AM",
                       style: TextStyle(
                         fontSize: 17,
                         color: index == 1 ? Colors.white : Colors.black.withOpacity(0.6),
                       ),
                     ),
                   ),
                 )  ;
                    },
                  ),
                  ),
                SizedBox(height: 20),
                Material(
                  color: iColor,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "Book Appointment",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ),
                )
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}