import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeDetails extends StatelessWidget {
  const CoffeeDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFF1717),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("Coffee",style: GoogleFonts.roboto(

                color: Colors.white
              ),),
            ),
            centerTitle: true,
            leading: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10,left: 15),
                child: Icon(Icons.arrow_back_ios,color: Colors.white,),
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset("assets/Latte.png"),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("BEST COFFEE",style: GoogleFonts.roboto(
                        color: Colors.white.withOpacity(0.4),
                        letterSpacing: 1
                      ),),

                      SizedBox(
                        height: 13,
                      ),
                      Text("Latte",style: GoogleFonts.roboto(
                          color: Colors.white,
                        fontSize: 21
                      ),),
                      SizedBox(
                        height: 19,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          
                          Container(
                            width: 110,
                            height: 50,
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.white.withOpacity(0.2)
                              )
                              ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(CupertinoIcons.minus,color: Colors.white,),
                                Text("2",style: GoogleFonts.roboto(
                                  fontSize: 14,color: Colors.white
                                ),),
                                Icon(Icons.add,color: Colors.white,)
                              ],
                            ),
                            ),

                          Text("\$30.20",style: GoogleFonts.roboto(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                          ),)
                          
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),

                      Text("Coffee is major source of antixidants in the\ndiet. It has many health benefites",style: GoogleFonts.roboto(
                        color: Colors.white.withOpacity(0.4),

                      ),textAlign: TextAlign.start,),
                      SizedBox(
                        height: 15,
                      ),
                      Text("Volume : 60 ml",style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.w600
                      ),)
                    ],
                  ),

                  Spacer(),


                  Padding(
                    padding: const EdgeInsets.only(bottom: 15,right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.4),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.9),
                                    spreadRadius: 1,
                                    blurRadius: 4
                                )
                              ]
                          ),
                          child: Center(
                            child: Text(
                              "Add to Cart",style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                            ),
                            ),
                          ),
                        ),

                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xfff59c00),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.9),
                                    spreadRadius: 1,
                                    blurRadius: 4
                                )
                              ]
                          ),
                          child: Center(
                              child: Icon(Icons.favorite_border,color: Colors.white,)
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),



            ),
          ),
        )
    );
  }
}
