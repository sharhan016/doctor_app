import 'package:flutter/material.dart';

class PatientCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
     // decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      child: Row(
        children: [
            Card(
            //color: Colors.amberAccent,
            //margin: EdgeInsets.all(8),
           // elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              height: 170,
              width: MediaQuery.of(context).size.width / 1.6,
              //width: 260,
              decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent, width: 2),borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: EdgeInsets.all(6.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Name', 
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                        ),
                        ),
                        Flexible(
                        child: Text(
                          'Aman Pillai',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Age', 
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                        ),
                        ),
                        Flexible(
                        child: Text(
                          '35',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Gender', 
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                        ),
                        ),
                        Flexible(
                        child: Text(
                          'Male',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text('Last Consulted', 
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                        ),
                        ),
                        ),
                        Flexible(
                        child: Text(
                          ' 17th Sep 2020',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      ],
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Container(
                    width: 100,
                    height: 20,
                    decoration: BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.circular(5.0)),
                    child: Center(child: Text('View Profile', style: TextStyle(color: Colors.white, fontSize: 15),),),
                  ),
                    )
                  ],),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(5.0)),
                    child: Center(child: Text('Video Call', style: TextStyle(color: Colors.white, fontSize: 15),),),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(5.0)),
                    child: Center(child: Text('Chat', style: TextStyle(color: Colors.white, fontSize: 15),),),
                  ),
                    ],
                  )

                  ],
                ),
              ),
            )
          ),

          Container(
            width: MediaQuery.of(context).size.width / 3,
           // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
            height: 170,
           child: ClipRRect(
             borderRadius: BorderRadius.circular(10.0),
             child: Image(image: AssetImage('images/user.PNG'), fit: BoxFit.fill, ) ,
           ),
           //child: Image(image: AssetImage('images/user.PNG'), fit: BoxFit.fill, ),
          
          )
        ],
      ),
    );
  }
}
