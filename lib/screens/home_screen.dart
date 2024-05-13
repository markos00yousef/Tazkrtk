import 'package:flutter/material.dart';

import 'booking_screen.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    List movies=[
      "Joker",
      "Green Book",
      "LaLa land",
      "الفيل الازرق 2",
      "بنك الحظ",
    ];
    List movies2=[
      "The Batman",
      "هارلي",
      "ابن الحاج احمد",
      "الفيل الازرق 3",
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Icon(Icons.sort,
          size: 32,color: Colors.yellowAccent,),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Tazkartak",style:TextStyle(
          fontSize: 24,
          color: Colors.yellowAccent,
         ),
        ),
        centerTitle: true,
        actions: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Icon(Icons.search,
                size: 28,
                color: Colors.yellowAccent,
              ),
              SizedBox(width: 10,),
              Icon(Icons.filter_alt_outlined,
                size: 28,
                color: Colors.yellowAccent,
              ),
            ],
           ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12,horizontal: 15,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Playing Now",
                  style: TextStyle(
                  color: Colors.white,
                   fontSize: 22,
                  fontWeight: FontWeight.bold,
                 ),
                ),
                InkWell(
                  onTap: (){},
                  child: Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 390,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,

            itemBuilder: (context,index){
              return Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>BookingScreen(
                            movie: movies[index]), ),);

                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset("images/${movies[index]}.png",
                        height: 280,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(padding: EdgeInsets.only(left: 8,),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(movies[index],
                          style:TextStyle(
                            fontSize: 18,
                            color:Colors.yellowAccent,
                            fontWeight: FontWeight.w600,

                          ),
                        ),
                        SizedBox(height:4),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellowAccent,size: 18,),
                            Text("4.5",
                            style:TextStyle(
                              fontSize: 16,
                              color:Colors.yellowAccent,


                            ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8,),
                        Row(children: [
                          Icon(Icons.access_time_rounded
                          ,color: Colors.white,
                          size: 20,),
                          SizedBox(width: 10),
                          Text("2h 30min",
                          style: TextStyle(
                            color: Colors.white60,

                          ),),
                         ],
                        ),
                      ],
                    ),
                    ),
                  ],
                ),
              );
            },
           ),
          ),
          SizedBox(height: 15),
          Padding(
              padding:EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Container(
                  padding:EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                    boxShadow:[BoxShadow(color: Colors.white, blurRadius: 5, spreadRadius: 1,),
                    ],



                  ),
                  child: Text("COMMING SOON",style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                   ),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 5),
          SizedBox(height: 390,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,

              itemBuilder: (context,index){
                return Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset("images/${movies2[index]}.png",
                            fit: BoxFit.contain,
                            height: 200,
                            width: 180,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(padding: EdgeInsets.only(left: 8,),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(movies2[index],
                              style:TextStyle(
                                fontSize: 18,
                                color:Colors.yellowAccent,
                                fontWeight: FontWeight.w600,

                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

        ],
        ),
      ),
    );
  }
}