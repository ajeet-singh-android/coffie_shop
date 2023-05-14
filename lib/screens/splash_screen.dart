import 'package:coffie_shop/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 100,bottom: 40),
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("assets/bg.png",),
              fit: BoxFit.cover,
              opacity: 0.6
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Coffie Shop",style: GoogleFonts.pacifico(
            fontSize: 50,
                color: Colors.white
              )),

              Column(
                children: [
                  Text("Feeling Low? Take Sip Coffiee",style: GoogleFonts.roboto(
                    fontSize:15,
                    color: Colors.white
                  )),
                  SizedBox(
                    height: 60,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                    },
                    child: Container(
                      width: 150,
                        height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xfff59c00),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text("Get Start",style: GoogleFonts.roboto(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w600
                        ),),
                      ),
                    ),
                  )
                ],
              )

            ],
          ),
        ),

      ),
    );
  }
}
