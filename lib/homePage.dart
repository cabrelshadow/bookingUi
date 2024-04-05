
import 'package:flutter/material.dart';

class HomePag extends StatefulWidget {
  const HomePag({super.key});

  @override
  State<HomePag> createState() => _HomePagState();
}

class _HomePagState extends State<HomePag> {
  @override
  Widget build(BuildContext context) {
    var media=MediaQuery.sizeOf(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(

        items: [

          BottomNavigationBarItem(icon: Icon(Icons.home_filled,color: Colors.blue,),label: 'Home' ),
          BottomNavigationBarItem(icon: Icon(Icons.location_on_sharp),label: 'Booking'),
          BottomNavigationBarItem(icon: Icon(Icons.heart_broken_rounded),label: 'Watchlist'),
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home'),
        ],
        selectedItemColor: Colors.blue, // Couleur des icônes sélectionnées
        unselectedItemColor: Colors.grey, // Couleur des icônes non sélectionnées
        selectedLabelStyle: TextStyle(color: Colors.blue), // Style du texte sélectionné
        unselectedLabelStyle: TextStyle(color: Colors.grey), // Style du texte non sélectionné

      ),
      body: SingleChildScrollView(
       child: Container(
         height: media.height,
         width: media.width,
         decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage("assets/home.jpg"), // Chemin de l'image
             fit: BoxFit.cover, // Ajustement de l'image
           ),
         ),

           child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.only(top: 50,left: 20,right: 20),

                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children:[
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Current Location",
                           style: TextStyle( color: Colors.white,
                             fontSize: 18,
                           ),
                         ),
                         Text("Mumbai Bajo, INA",
                           style: TextStyle( color: Colors.white,
                               fontSize: 20,
                               fontWeight: FontWeight.bold
                           ),
                         ),
                       ],
                     ),
                     Container(
                       width: 50,
                       height: 50,
                       decoration: BoxDecoration(
                         color: Color(0xFFb7b7b7),
                         borderRadius: BorderRadius.circular(10),
                       ),
                       child: Center(
                         child: Icon(
                           Icons.notifications_sharp,
                           color: Colors.white,size: 40,
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 60),
                 child: Container(

                   width: 370,
                   height: 50,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius:BorderRadius.circular(20) ,
                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(left: 20,right: 20),
                     child: Row(

                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: const [
                         Text("Looking for homestay",
                           style: TextStyle(
                               color: Colors.grey,
                               fontSize: 17
                           ),
                         ),
                         Image(image: AssetImage("assets/search.png"),width: 20,height: 20, color: Colors.grey,)

                       ],
                     ),
                   ),
                 ),
               ),
               SizedBox(height: 40,),
               SingleChildScrollView(
                 child: Container(
                   height: 570,
                   width:media.width,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(20),
                       topRight: Radius.circular(20),
                     )
                   ),



                         child: Column(
                           children: [
                             SizedBox(
                               child: Padding(
                                 padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                                 child: Row(

                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                   children: [
                                     Text("Hotel Near You",
                                       style: TextStyle(
                                         fontSize: 20,
                                         fontWeight: FontWeight.bold,
                                       ),

                                     ),

                                     Text("View All",
                                         style: TextStyle(
                                             fontSize: 15,
                                             fontWeight: FontWeight.bold,
                                             color: Colors.blue
                                         )
                                     ),

                                   ],
                                 ),
                               ),
                             ),
                             SizedBox(
                               height: 270,
                               child: ListView(

                                 scrollDirection: Axis.horizontal,
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(left: 18,top: 20,right: 3),
                                     child: Container(
                                       height: 270,
                                       width: 170,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(15),
                                         image: DecorationImage(
                                           image: AssetImage("assets/h3.jpg"),
                                           fit: BoxFit.cover,
                                         ),
                                       ),

                                         child: Stack(
                                           children: [
                                             Positioned(
                                               top: 170,
                                               left: 10,
                                               child: Column(
                                                 crossAxisAlignment: CrossAxisAlignment.start,
                                                 children: [
                                                   Text("Paradise Resort",
                                                    style: TextStyle(fontWeight: FontWeight.bold,
                                                      color: Colors.white,
                                                      fontSize: 16
                                                    ),
                                                   ),
                                                   Text("mumbai",
                                                     style: TextStyle(
                                                         color: Colors.white,
                                                         fontSize: 14
                                                     ),
                                                   ),
                                                   Row(
                                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                     children: [
                                                       RichText(
                                                         text: TextSpan(
                                                             text: "450FCFA/",
                                                             style: TextStyle(
                                                               fontSize:13,
                                                               color: Colors.white,
                                                               fontWeight: FontWeight.bold
                                                             ),

                                                             children: [
                                                               TextSpan(
                                                                 text: " night",
                                                                 style: TextStyle(
                                                                     fontSize:13,
                                                                     color: Colors.white,

                                                                 ),
                                                               )
                                                             ]
                                                         ),

                                                       ),
                                                       SizedBox(width:19 ,),
                                                       Icon(Icons.star,color: Colors.yellow,size: 20,),
                                                       Text("4.8" ,style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                                                     ],
                                                   )
                                                 ],
                                               ),
                                             ),
                                           ],
                                         ),

                                     ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(left: 18,top: 20,right: 3),
                                     child: Container(
                                       height: 270,
                                       width: 170,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(15),
                                         image: DecorationImage(
                                           image: AssetImage("assets/h2.jpg"),
                                           fit: BoxFit.cover,
                                         ),
                                       ),

                                         child: Stack(
                                           children: [
                                             Positioned(
                                               top: 170,
                                               left: 10,
                                               child: Column(
                                                 crossAxisAlignment: CrossAxisAlignment.start,
                                                 children: [
                                                   Text("Paradise Resort",
                                                    style: TextStyle(fontWeight: FontWeight.bold,
                                                      color: Colors.white,
                                                      fontSize: 16
                                                    ),
                                                   ),
                                                   Text("mumbai",
                                                     style: TextStyle(
                                                         color: Colors.white,
                                                         fontSize: 14
                                                     ),
                                                   ),
                                                   Row(
                                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                     children: [
                                                       RichText(
                                                         text: TextSpan(
                                                             text: "450FCFA/",
                                                             style: TextStyle(
                                                               fontSize:13,
                                                               color: Colors.white,
                                                               fontWeight: FontWeight.bold
                                                             ),

                                                             children: [
                                                               TextSpan(
                                                                 text: " night",
                                                                 style: TextStyle(
                                                                     fontSize:13,
                                                                     color: Colors.white,

                                                                 ),
                                                               )
                                                             ]
                                                         ),

                                                       ),
                                                       SizedBox(width:19 ,),
                                                       Icon(Icons.star,color: Colors.yellow,size: 20,),
                                                       Text("4.8" ,style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                                                     ],
                                                   )
                                                 ],
                                               ),
                                             ),
                                           ],
                                         ),

                                     ),
                                   ),  Padding(
                                     padding: const EdgeInsets.only(left: 18,top: 20,right: 3),
                                     child: Container(
                                       height: 270,
                                       width: 170,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(15),
                                         image: DecorationImage(
                                           image: AssetImage("assets/h2.jpg"),
                                           fit: BoxFit.cover,
                                         ),
                                       ),

                                         child: Stack(
                                           children: [
                                             Positioned(
                                               top: 170,
                                               left: 10,
                                               child: Column(
                                                 crossAxisAlignment: CrossAxisAlignment.start,
                                                 children: [
                                                   Text("Paradise Resort",
                                                    style: TextStyle(fontWeight: FontWeight.bold,
                                                      color: Colors.white,
                                                      fontSize: 16
                                                    ),
                                                   ),
                                                   Text("mumbai",
                                                     style: TextStyle(
                                                         color: Colors.white,
                                                         fontSize: 14
                                                     ),
                                                   ),
                                                   Row(
                                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                     children: [
                                                       RichText(
                                                         text: TextSpan(
                                                             text: "450FCFA/",
                                                             style: TextStyle(
                                                               fontSize:13,
                                                               color: Colors.white,
                                                               fontWeight: FontWeight.bold
                                                             ),

                                                             children: [
                                                               TextSpan(
                                                                 text: " night",
                                                                 style: TextStyle(
                                                                     fontSize:13,
                                                                     color: Colors.white,

                                                                 ),
                                                               )
                                                             ]
                                                         ),

                                                       ),
                                                       SizedBox(width:19 ,),
                                                       Icon(Icons.star,color: Colors.yellow,size: 20,),
                                                       Text("4.8" ,style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                                                     ],
                                                   )
                                                 ],
                                               ),
                                             ),
                                           ],
                                         ),

                                     ),
                                   ),



                                 ],
                               ),
                             ),

                           Padding(
                               padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                               child: Row(

                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                 children: [
                                   Text("Explore",
                                     style: TextStyle(
                                       fontSize: 20,
                                       fontWeight: FontWeight.bold,
                                     ),

                                   ),

                                   Text("View All",
                                       style: TextStyle(
                                           fontSize: 15,
                                           fontWeight: FontWeight.bold,
                                           color: Colors.blue
                                       )
                                   ),

                                 ],
                               ),
                             ),

                             SizedBox(
                               height: 150,
                               child: ListView(

                                 scrollDirection: Axis.horizontal,
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(left: 18,top: 20,right: 3),
                                     child: Container(
                                       height: 270,
                                       width: 170,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(15),
                                         image: DecorationImage(
                                           image: AssetImage("assets/h3.jpg"),
                                           fit: BoxFit.cover,
                                         ),
                                       ),

                               child: Stack(
                                     children: [
                                     Positioned(
                                     top: 80,
                                       left: 20,
                                       right: 20,

                                       child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Center(
                                             child: Text("Bali",
                                               style: TextStyle(fontWeight: FontWeight.bold,
                                                   color: Colors.white,
                                                   fontSize: 16
                                               ),
                                             ),
                                           ),


                                         ],
                                       ),
                                     ),
                               ],
                             ),

                                     ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(left: 18,top: 20,right: 3),
                                     child: Container(
                                       height: 270,
                                       width: 170,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(15),
                                         image: DecorationImage(
                                           image: AssetImage("assets/h2.jpg"),
                                           fit: BoxFit.cover,
                                         ),
                                       ),

                               child: Stack(
                                     children: [
                                     Positioned(
                                     top: 80,
                                       left: 20,
                                       right: 20,

                                       child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Center(
                                             child: Text("Naerobie",
                                               style: TextStyle(fontWeight: FontWeight.bold,
                                                   color: Colors.white,
                                                   fontSize: 16
                                               ),
                                             ),
                                           ),


                                         ],
                                       ),
                                     ),
                               ],
                             ),
                                     ),
                                   ),     Padding(
                                     padding: const EdgeInsets.only(left: 18,top: 20,right: 3),
                                     child: Container(
                                       height: 270,
                                       width: 170,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(15),
                                         image: DecorationImage(
                                           image: AssetImage("assets/h1.jpg"),
                                           fit: BoxFit.cover,
                                         ),
                                       ),

                               child: Stack(
                                     children: [
                                     Positioned(
                                     top: 80,
                                       left: 20,
                                       right: 20,

                                       child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text("Banjoul",
                                             style: TextStyle(fontWeight: FontWeight.bold,
                                                 color: Colors.white,
                                                 fontSize: 16
                                             ),
                                           ),


                                         ],
                                       ),
                                     ),
                               ],
                             ),

                                     ),
                                   ),




                                 ],
                               ),
                             ),


                           ],
                         ),
                       ),
               ),


             ],
           ),

       ),
      ),

    );

  }
}
