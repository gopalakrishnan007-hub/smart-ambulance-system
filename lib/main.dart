import 'package:flutter/material.dart';

import 'screens/ambulance_page.dart';
import 'screens/traffic_page.dart';
import 'screens/hospital_page.dart';


void main() {
  runApp(const SmartAmbulanceApp());
}


class SmartAmbulanceApp extends StatelessWidget {
  const SmartAmbulanceApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: "Smart Ambulance",

      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: const RoleSelectionPage(),

    );

  }
}



class RoleSelectionPage extends StatelessWidget {

  const RoleSelectionPage({super.key});



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: const Text(
          "Smart Ambulance System",
        ),

        centerTitle: true,

      ),



      body: Padding(

        padding: const EdgeInsets.all(25),


        child: Column(

          mainAxisAlignment:
              MainAxisAlignment.center,


          children: [


            const Icon(

              Icons.local_hospital,

              size: 100,

              color: Colors.red,

            ),



            const SizedBox(height: 40),




            RoleButton(

              title: "Ambulance Driver",

              icon: Icons.local_shipping,

              color: Colors.red,


              page:
                  const AmbulanceHome(),

            ),




            RoleButton(

              title: "Traffic Police",

              icon: Icons.local_police,

              color: Colors.blue,


              page:
                  const TrafficPoliceLoginPage(),

            ),




            RoleButton(

              title: "Hospital",

              icon: Icons.local_hospital,

              color: Colors.teal,


              page:
                  const HospitalLoginPage(),

            ),


          ],


        ),

      ),

    );

  }

}





class RoleButton extends StatelessWidget {


  final String title;

  final IconData icon;

  final Color color;

  final Widget page;



  const RoleButton({

    super.key,

    required this.title,

    required this.icon,

    required this.color,

    required this.page,

  });



  @override
  Widget build(BuildContext context) {


    return Padding(

      padding:
          const EdgeInsets.symmetric(vertical: 10),


      child: SizedBox(


        width:
            double.infinity,


        height:
            60,


        child: ElevatedButton.icon(


          style:
              ElevatedButton.styleFrom(


            backgroundColor:
                color,


          ),



          icon:
              Icon(

                icon,

                color: Colors.white,

              ),



          label:
              Text(


                title,


                style:
                    const TextStyle(


                  fontSize: 20,

                  color: Colors.white,


                ),


              ),




          onPressed: () {


            Navigator.push(

              context,


              MaterialPageRoute(

                builder: (context) => page,

              ),

            );


          },


        ),


      ),


    );

  }

}