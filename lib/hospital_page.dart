import 'package:flutter/material.dart';

class HospitalLoginPage extends StatefulWidget {
  const HospitalLoginPage({super.key});

  @override
  State<HospitalLoginPage> createState() =>
      _HospitalLoginPageState();
}

class _HospitalLoginPageState extends State<HospitalLoginPage> {

  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,

        decoration: const BoxDecoration(

          gradient: LinearGradient(

            colors: [

              Color(0xff00695C),
              Color(0xff00897B),
              Color(0xff26A69A),

            ],

            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,

          ),

        ),

        child: SafeArea(

          child: Center(

            child: SingleChildScrollView(

              padding: const EdgeInsets.all(25),

              child: Card(

                elevation: 12,

                shape: RoundedRectangleBorder(

                  borderRadius:
                      BorderRadius.circular(20),

                ),

                child: Padding(

                  padding:
                      const EdgeInsets.all(25),

                  child: Column(

                    mainAxisSize:
                        MainAxisSize.min,


                    children: [


                      const CircleAvatar(

                        radius: 50,

                        backgroundColor:
                            Colors.teal,


                        child: Icon(

                          Icons.local_hospital,

                          size: 60,

                          color: Colors.white,

                        ),

                      ),


                      const SizedBox(height: 20),


                      const Text(

                        "Hospital Login",

                        style: TextStyle(

                          fontSize: 28,

                          fontWeight:
                              FontWeight.bold,

                        ),

                      ),


                      const SizedBox(height: 8),


                      const Text(

                        "Smart Ambulance Traffic Management System",

                        textAlign:
                            TextAlign.center,

                        style: TextStyle(

                          color: Colors.grey,

                        ),

                      ),


                      const SizedBox(height: 30),


                      TextField(

                        decoration: InputDecoration(

                          labelText:
                              "Hospital ID",

                          prefixIcon:
                              const Icon(
                                  Icons.local_hospital),

                          border:
                              OutlineInputBorder(

                            borderRadius:
                                BorderRadius.circular(15),

                          ),

                        ),

                      ),


                      const SizedBox(height: 20),


                      TextField(

                        decoration: InputDecoration(

                          labelText:
                              "Email",

                          prefixIcon:
                              const Icon(Icons.email),

                          border:
                              OutlineInputBorder(

                            borderRadius:
                                BorderRadius.circular(15),

                          ),

                        ),

                      ),


                      const SizedBox(height: 20),


                      TextField(

                        obscureText:
                            hidePassword,


                        decoration: InputDecoration(

                          labelText:
                              "Password",


                          prefixIcon:
                              const Icon(Icons.lock),


                          suffixIcon:
                              IconButton(

                            icon: Icon(

                              hidePassword

                                  ? Icons.visibility_off

                                  : Icons.visibility,

                            ),


                            onPressed: () {

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


                      const SizedBox(height: 15),


                      Align(

                        alignment:
                            Alignment.centerRight,


                        child: TextButton(

                          onPressed: () {},


                          child:
                              const Text(
                                  "Forgot Password?"),

                        ),

                      ),


                      const SizedBox(height: 15),


                      SizedBox(

                        width:
                            double.infinity,


                        height:
                            55,


                        child: ElevatedButton(


                          style:
                              ElevatedButton.styleFrom(

                            backgroundColor:
                                Colors.teal,


                            shape:
                                RoundedRectangleBorder(

                              borderRadius:
                                  BorderRadius.circular(15),

                            ),

                          ),


                          onPressed: () {},


                          child: const Text(

                            "LOGIN",

                            style: TextStyle(

                              fontSize: 18,

                              color: Colors.white,

                            ),

                          ),


                        ),

                      ),


                      const SizedBox(height: 25),


                      const Divider(),


                      const SizedBox(height: 15),


                      Row(

                        mainAxisAlignment:
                            MainAxisAlignment.spaceAround,


                        children: const [


                          Column(

                            children: [

                              Icon(
                                Icons.emergency,
                                color: Colors.red,
                              ),

                              SizedBox(height: 5),

                              Text("Emergency"),

                            ],

                          ),



                          Column(

                            children: [

                              Icon(
                                Icons.bed,
                                color: Colors.blue,
                              ),

                              SizedBox(height: 5),

                              Text("Beds"),

                            ],

                          ),



                          Column(

                            children: [

                              Icon(
                                Icons.medical_services,
                                color: Colors.green,
                              ),

                              SizedBox(height: 5),

                              Text("Doctors"),

                            ],

                          ),


                        ],

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