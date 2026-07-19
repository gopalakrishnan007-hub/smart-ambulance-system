import 'package:flutter/material.dart';

class PoliceHomePage extends StatelessWidget {

  const PoliceHomePage({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: const Text(
          "Traffic Police Dashboard",
        ),

        backgroundColor: Colors.blue,

      ),


      body: Padding(

        padding: const EdgeInsets.all(20),

        child: Column(

          children: [


            Card(

              elevation: 5,

              child: ListTile(

                leading: const Icon(
                  Icons.warning,
                  color: Colors.red,
                  size: 40,
                ),

                title: const Text(
                  "Emergency Alert",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                subtitle: const Text(
                  "Ambulance approaching\nPatient Critical",
                ),

              ),

            ),



            const SizedBox(height:20),



            Card(

              elevation: 5,

              child: ListTile(

                leading: const Icon(
                  Icons.location_on,
                  color: Colors.green,
                  size: 40,
                ),

                title: const Text(
                  "Ambulance Location",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                subtitle: const Text(
                  "Chennai - Anna Nagar",
                ),

              ),

            ),



            const SizedBox(height:20),



            Card(

              elevation:5,

              child: ListTile(

                leading: const Icon(
                  Icons.traffic,
                  color: Colors.orange,
                  size:40,
                ),

                title: const Text(
                  "Traffic Control",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                subtitle: const Text(
                  "Route Clearance Required",
                ),

              ),

            ),



            const SizedBox(height:30),



            SizedBox(

              width: double.infinity,

              height:55,


              child: ElevatedButton(

                style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.blue,

                ),


                onPressed: () {},


                child: const Text(

                  "CLEAR AMBULANCE ROUTE",

                  style: TextStyle(

                    color: Colors.white,

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