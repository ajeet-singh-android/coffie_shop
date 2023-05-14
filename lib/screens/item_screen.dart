import 'package:coffie_shop/screens/coffee_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CoffeeScreen extends StatelessWidget {
   CoffeeScreen({Key? key}) : super(key: key);

  List<String> imagelist = ["Latte","Espresso","Cold Coffee","Black Coffee","Latte","Espresso","Cold Coffee","Black Coffee"];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        color: Colors.transparent,
        height: MediaQuery.of(context).size.height,
        child: GridView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: imagelist.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 150/205,
          mainAxisSpacing: 1,
          crossAxisSpacing: 10
        ), itemBuilder: (context,index){
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CoffeeDetails()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xFF212325),
                borderRadius: BorderRadius.circular(11),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 4
                  )
                ]
              ),
              child: Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                          Image.asset(height: 120,width: 120,"assets/${imagelist[index]}.png"),
                      Padding(padding: EdgeInsets.symmetric(
                        horizontal: 5,vertical: 1
                      ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(imagelist[index],style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                            ),),
                            SizedBox(height: 7,),
                            Text("Best Coffee",style: GoogleFonts.roboto(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white.withOpacity(0.6)
                            ),),
                            SizedBox(height: 7,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("\$30",style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white
                                ),),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Color(0xfff59c00),
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Icon(Icons.add,color: Colors.white,),
                                )
                              ],
                            )

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
