import 'package:flutter/material.dart';


class HospitalHomePage extends StatelessWidget {

  const HospitalHomePage({super.key});


  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(

        title: const Text(
          "Hospital Dashboard",
        ),

        backgroundColor: Colors.teal,

      ),


      body: Padding(

        padding: const EdgeInsets.all(20),


        child: Column(

          children: [


            Card(

              elevation:5,


              child: ListTile(

                leading: const Icon(

                  Icons.emergency,

                  color: Colors.red,

                  size:40,

                ),


                title: const Text(

                  "Incoming Ambulance",

                  style: TextStyle(

                    fontWeight: FontWeight.bold,

                  ),

                ),


                subtitle: const Text(

                  "Emergency Patient\nETA: 5 Minutes",

                ),


              ),

            ),




            const SizedBox(height:20),




            Card(

              elevation:5,


              child: ListTile(

                leading: const Icon(

                  Icons.bed,

                  color: Colors.blue,

                  size:40,

                ),


                title: const Text(

                  "Available Beds",

                  style: TextStyle(

                    fontWeight: FontWeight.bold,

                  ),

                ),


                subtitle: const Text(

                  "12 Beds Available",

                ),


              ),

            ),





            const SizedBox(height:20),




            Card(

              elevation:5,


              child: ListTile(

                leading: const Icon(

                  Icons.medical_services,

                  color: Colors.green,

                  size:40,

                ),


                title: const Text(

                  "Doctors Available",

                  style: TextStyle(

                    fontWeight: FontWeight.bold,

                  ),

                ),


                subtitle: const Text(

                  "8 Doctors Online",

                ),

              ),

            ),




            const SizedBox(height:30),




            SizedBox(

              width:double.infinity,

              height:55,


              child: ElevatedButton(


                style: ElevatedButton.styleFrom(

                  backgroundColor:Colors.teal,

                ),


                onPressed:(){},


                child:const Text(

                  "PREPARE EMERGENCY ROOM",

                  style:TextStyle(

                    color:Colors.white,

                    fontSize:16,

                  ),

                ),

              ),

            ),



          ],

        ),

      ),

    );

  }

}