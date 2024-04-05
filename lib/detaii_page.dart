import 'package:booking_app/wigets/widgetImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
      backgroundColor: Color(0xffe7e7e7),
           body:   SingleChildScrollView(
             child: Column(
                 children: [
                   Container(
                     height: MediaQuery.of(context).size.height/1.7,
                     width: MediaQuery.of(context).size.width,
                     decoration: BoxDecoration(
                         image: DecorationImage(
                             image: AssetImage("assets/r1.png"),
                             fit: BoxFit.cover

                         ),
                       borderRadius: BorderRadius.only(
                         bottomLeft: Radius.circular(22),
                         bottomRight: Radius.circular(22),
                       )
                     ),
                     child: Column(

                       children: [
                         Padding(
                           padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
                           /////===============Section des icons ==================////
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Container(
                                 width: 50,
                                 height: 50,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   color:Color(0xFFd3d3d3).withOpacity(0.5)
                                 ),
                                 child: Padding(
                                   padding: const EdgeInsets.only(left: 8,),
                                   child:  Icon(Icons.arrow_back_ios,color: Colors.white,)
                                 ),
                                 ),

                               Container(
                                 width: 50,
                                 height: 50,
                                 decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(10),
                                     color:Color(0xFFd3d3d3).withOpacity(0.7)
                                 ),
                                 child: Center(child: Text('❤️',style: TextStyle(fontSize: 20,color: Colors.white),)),
                               ),
                             ],
                           ),
                         ),
                         ////====================== section du text et photos================///
                         SizedBox(height: 50,),
                         Padding(

                           padding: EdgeInsets.only(
                             top: MediaQuery.of(context).size.height * 0.06, // 10% de la hauteur de l'écran
                             left: MediaQuery.of(context).size.width * 0.05, // 5% de la largeur de l'écran
                             right: MediaQuery.of(context).size.width * 0.05, // 5% de la largeur de l'écran
                           ),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children:[
                               ///=======text gauche===============
                               Padding(
                                 padding: const EdgeInsets.only(top: 110),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children:  [
                                     Text("Paradise Resorts",style: TextStyle(
                                       fontSize: 25,
                                       color: Colors.white,
                                       fontWeight: FontWeight.w700,
                                       letterSpacing: 1,
                                     ),
                                     ),
                                     SizedBox(height: 10,),
                                     Text("pantai Waecicu, Labuan Bajo, Kec.\n Komodo, Kabupaten Manggarai\n Barat, Nusa Tenggara Tim. 86554",
                                       textAlign: TextAlign.start
                                       ,style: TextStyle(
                                       fontSize: 14,
                                      color: Color(0xffd5d5d3).withOpacity(0.9),


                                     ),
                                     )
                                   ],
                                 ),
                               ),
                               Column(
                                 children: [
                                   WidgetIcons(Image: AssetImage("assets/h2.jpg"), ),
                                   SizedBox(height: 8,),
                                   WidgetIcons(Image: AssetImage("assets/h2.jpg"), ),

                                 ],
                               )
                             ],
                           ),
                         )

                       ],
                     ),
                   ),
                   //////=================About text================================.////
                   SizedBox(height: 20,),
                   Padding(
                     padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                     child: Column(

                       crossAxisAlignment: CrossAxisAlignment.start,

                       children: [
                         Text("About Us", style: TextStyle(
                           fontWeight:FontWeight.w700,
                           fontSize: 25,
                           color: Colors.black

                         ),
                         ),
                         SizedBox(height: 10,),
                         RichText(
                           text: TextSpan(
                             text: "Welcome to resort paradise we ensure the best service during your stay in bali with an emphasis on customer "
                                 "comfort. Enjoy Balinese specialties, dance and music every "
                                 "Saturday for free at competitive prices. You can enjoy all the facilities at our resort",
                             style: TextStyle(
                                 fontSize:15,
                                 color: Colors.grey,


                             ),
                         )
                         )
                       ],
                     ),
                   ),
                   ///============== section des services ==========================////
                   SizedBox(height: 20,),
                   Padding(
                     padding:  EdgeInsets.only(left: 20,right: 20,top: 10),
                     child: Column(

                       crossAxisAlignment: CrossAxisAlignment.start,

                       children:    [
                         Text("Services & Facilities", style: TextStyle(
                             fontWeight:FontWeight.w700,
                             fontSize: 22,
                             color: Colors.black

                         ),
                         ),
                         SizedBox(height: 10,),



                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children:[
                                   ////================= Section 1 des icons================////
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       buildRow(Icon(Icons.check_circle,color: Color(0xFF1C5BFF)),"Swiming pool"),
                                       SizedBox(height: 8,),
                                       buildRow(Icon(Icons.check_circle,color: Color(0xFF1C5BFF)),"Swiming pool"),
                                     ],
                                   ),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       buildRow(Icon(Icons.check_circle,color: Color(0xFF1C5BFF)),"Swiming pool"),
                                       SizedBox(height: 8,),
                                       buildRow(Icon(Icons.check_circle,color: Color(0xFF1C5BFF)),"Swiming pool"),
                                       SizedBox(height: 8,),

                                     ],
                                   ),
                                 ],
                               ),
                       ],
                     ),
                   ),

                   BottomAppBar(
                     height: 80,
                     color: Colors.white,
                     child: Padding(
                       padding: const EdgeInsets.only(top: 0,bottom: 0),
                       child: Container(
                         width: MediaQuery.of(context).size.width,
                         height: 100,
                         decoration: BoxDecoration(

                         ),
                         child: Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,

                           children: [
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("Price estimate",style: TextStyle( color:Colors.grey ),),
                                 SizedBox(height: 10,),
                                 RichText(
                                     text: TextSpan(text: "450FCFA/",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20 ),
                                     children: [
                                       TextSpan(text: "night",style: TextStyle(color: Colors.grey)),
                                     ]

                                     )

                                 )


                               ],
                             ),
                             Container(
                               width: 170,
                               height:60,
                               decoration: BoxDecoration(
                                   color: Color(0xFF1C5BFF),
                                 borderRadius: BorderRadius.circular(18),
                               ),
                               child: Center(
                                 child: Text("Reserve Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                               ),
                             )
                           ],
                         ),
                       ),
                     ),
                   )
                 ],
               ),
           ),

      );

  }


}


