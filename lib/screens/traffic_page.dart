import 'package:flutter/material.dart';
import 'police_home.dart';


class TrafficPoliceLoginPage extends StatefulWidget {

  const TrafficPoliceLoginPage({super.key});


  @override
  State<TrafficPoliceLoginPage> createState() =>
      _TrafficPoliceLoginPageState();

}



class _TrafficPoliceLoginPageState
    extends State<TrafficPoliceLoginPage> {


  bool hidePassword = true;


  final policeIdController = TextEditingController();

  final passwordController = TextEditingController();



  void login() {


    if (policeIdController.text == "police@gmail.com" &&
        passwordController.text == "1234") {



      Navigator.push(

        context,

        MaterialPageRoute(

          builder: (context) =>
          const PoliceHomePage(),

        ),

      );


    } else {


      ScaffoldMessenger.of(context).showSnackBar(


        const SnackBar(

          content:
          Text("Invalid Police ID or Password"),

        ),

      );


    }

  }





  @override
  Widget build(BuildContext context) {


    return Scaffold(


      body: Container(


        width: double.infinity,


        decoration: const BoxDecoration(


          gradient: LinearGradient(


            colors: [

              Color(0xff0D47A1),

              Color(0xff1976D2),

              Color(0xff42A5F5),

            ],


            begin: Alignment.topCenter,

            end: Alignment.bottomCenter,


          ),

        ),



        child: SafeArea(


          child: Center(


            child: SingleChildScrollView(


              padding:
              const EdgeInsets.all(25),



              child: Card(


                elevation:15,


                shape:
                RoundedRectangleBorder(


                  borderRadius:
                  BorderRadius.circular(25),


                ),




                child: Padding(


                  padding:
                  const EdgeInsets.all(25),




                  child: Column(


                    mainAxisSize:
                    MainAxisSize.min,



                    children: [



                      const CircleAvatar(


                        radius:50,


                        backgroundColor:
                        Colors.blue,



                        child: Icon(


                          Icons.local_police,


                          color:
                          Colors.white,


                          size:60,


                        ),


                      ),




                      const SizedBox(height:20),




                      const Text(


                        "Traffic Police",


                        style:TextStyle(


                          fontSize:28,


                          fontWeight:
                          FontWeight.bold,


                        ),


                      ),





                      const SizedBox(height:30),





                      TextField(


                        controller:
                        policeIdController,



                        decoration:
                        InputDecoration(



                          labelText:
                          "Police ID",



                          prefixIcon:
                          const Icon(
                              Icons.badge),



                          border:
                          OutlineInputBorder(


                            borderRadius:
                            BorderRadius.circular(15),


                          ),


                        ),


                      ),






                      const SizedBox(height:20),






                      TextField(


                        controller:
                        passwordController,



                        obscureText:
                        hidePassword,



                        decoration:
                        InputDecoration(



                          labelText:
                          "Password",



                          prefixIcon:
                          const Icon(
                              Icons.lock),




                          suffixIcon:
                          IconButton(



                            icon: Icon(


                              hidePassword

                                  ? Icons.visibility_off

                                  : Icons.visibility,


                            ),



                            onPressed:(){



                              setState(() {


                                hidePassword =
                                !hidePassword;


                              });


                            },


                          ),




                          border:
                          OutlineInputBorder(


                            borderRadius:
                            BorderRadius.circular(15),


                          ),



                        ),


                      ),






                      const SizedBox(height:30),





                      SizedBox(


                        width:
                        double.infinity,


                        height:55,



                        child:
                        ElevatedButton(



                          onPressed:
                          login,



                          style:
                          ElevatedButton.styleFrom(



                            backgroundColor:
                            Colors.blue,



                          ),




                          child:
                          const Text(



                            "LOGIN",



                            style:
                            TextStyle(



                              color:
                              Colors.white,


                              fontSize:18,


                            ),


                          ),



                        ),


                      ),



                    ],


                  ),


                ),


              ),


            ),


          ),


        ),


      ),


    );

  }

}