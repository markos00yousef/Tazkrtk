import 'dart:ui';

import 'package:flutter/material.dart';

import '../companents/show_time.dart';
import 'buy_ticket.dart';

class BookingScreen extends StatelessWidget{
  String movie;
  BookingScreen({required this.movie});

  @override
  Widget build(BuildContext context){
    return Material(
      color: Color(0xFF212429),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height /2.2,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage("images/${movie}.png",),
                  fit: BoxFit.cover,
                  opacity: 0.6,
                ),
              ),
              child: Column(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(top: 40,left: 10,right: 10,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 28,),

                        ),
                        Row(children: [
                          Icon(Icons.share_outlined,
                          color: Colors.white,
                          size: 25,),
                          SizedBox(width: 10),
                          Icon(Icons.favorite_outline,color: Colors.red,
                          size: 25,),


                        ],)

                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(20),
                 child: Text(movie,style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                   color: Colors.yellowAccent,
                 ),),
                  ),

                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height:30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [

                      //////formats boxs
                      SizedBox(height: 25,
                      child:ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context,index){
                            return InkWell(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                padding: EdgeInsets.symmetric(vertical: 1),
                                decoration: BoxDecoration(
                                  color: index == 1
                                  ?Color(0xFFF7D300)
                                  :Color(0xFF212429),
                                  borderRadius: BorderRadius.circular(3),
                                  border: index != 1
                                      ?Border.all(color:Colors.white60,)
                                      :null,

                                ),

                              ),
                            );
                          },
                      ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text("Select Date",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    fontWeight: FontWeight.w600,


                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      width: MediaQuery.of(context).size.width * .9,

                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children:  <Widget>[
                              ShowTime(
                                time: "10 MAY",
                                isActive: false,
                              ),
                              ShowTime(
                                time: '11 MAY',
                                isActive: false,
                              ),
                              ShowTime(
                                time: '12 MAY',
                                isActive: false,
                              ),
                              ShowTime(
                                time: '13 MAY',
                                isActive: false,
                              ),
                              ShowTime(
                                time: '14 MAY',
                                isActive: false,
                              ),
                            ],
                          ),
                        ),
                      ),

                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,color: Colors.yellowAccent,),
                    Text("Cairo Festival Cinema",
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w600,
                          
                    ),
                    ),
                    Spacer(),
                    Text("Hall A",
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                    ),
                  ],
                ),
                  SizedBox(height: 10,),Text("Select Time",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    fontWeight: FontWeight.w600,


                  ),
                ),
                SizedBox(height: 8),
                SizedBox(height: 10,

                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      width: MediaQuery.of(context).size.width * .9,

                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children:  <Widget>[
                              ShowTime(
                                time: "4:00 PM",
                                isActive: false,
                              ),
                              ShowTime(
                                time: '6:30 PM',
                                isActive: false,
                              ),
                              ShowTime(
                                time: '9:00 PM',
                                isActive: false,
                              ),
                              ShowTime(
                                time: '11:30 PM',
                                isActive: false,
                              ),
                              ShowTime(
                                time: '1:30 AM',
                                isActive: false,
                              ),
                            ],
                          ),
                        ),
                      ),

                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,color: Colors.yellowAccent,),
                    Text("VOX Cinemas",
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w600,

                      ),
                    ),
                    Spacer(),
                    Text("Hall A",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),Text("Select Time",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    fontWeight: FontWeight.w600,


                  ),
                ),
                SizedBox(height: 8),
                SizedBox(height: 30,
                   ),Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      width: MediaQuery.of(context).size.width * .9,

                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children:  <Widget>[
                              ShowTime(
                                time: "1:00 PM",
                                isActive: false,
                              ),
                              ShowTime(
                                time: '3:30 PM',
                                isActive: false,
                              ),
                              ShowTime(
                                time: '6:00 PM',
                                isActive: false,
                              ),
                              ShowTime(
                                time: '8:30 PM',
                                isActive: false,
                              ),
                              ShowTime(
                                time: '11:00 PM',
                                isActive: false,
                              ),
                            ],
                          ),
                        ),
                      ),

                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  width: 200,
                  height: 50,
                  child: Material(

                    color: Color(0xFFF7D300).withOpacity(0.9),
                    borderRadius: BorderRadius.circular(5),
                    child: InkWell(
                      child: Text(
                        '   Book Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BuyTicket(movie: movie),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
             ),
            ),
          ],
        ),
      ),
    );
  }
}