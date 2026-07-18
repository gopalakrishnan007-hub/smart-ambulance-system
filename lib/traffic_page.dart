import 'package:flutter/material.dart';

class TrafficPoliceLoginPage extends StatefulWidget {
  const TrafficPoliceLoginPage({super.key});

  @override
  State<TrafficPoliceLoginPage> createState() =>
      _TrafficPoliceLoginPageState();
}

class _TrafficPoliceLoginPageState
    extends State<TrafficPoliceLoginPage> {

  bool hidePassword = true;

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
              padding: const EdgeInsets.all(25),

              child: Card(
                elevation: 15,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(25),

                  child: Column(
                    mainAxisSize: MainAxisSize.min,

                    children: [

                      const CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.blue,

                        child: Icon(
                          Icons.local_police,
                          color: Colors.white,
                          size: 60,
                        ),
                      ),


                      const SizedBox(height: 20),


                      const Text(
                        "Traffic Police",

                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),


                      const SizedBox(height: 5),


                      const Text(
                        "Smart Ambulance Traffic Management System",

                        textAlign: TextAlign.center,

                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),


                      const SizedBox(height: 30),


                      TextField(
                        decoration: InputDecoration(

                          labelText: "Police ID",

                          prefixIcon:
                              const Icon(Icons.badge),

                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(15),
                          ),
                        ),
                      ),


                      const SizedBox(height: 20),


                      TextField(

                        obscureText: hidePassword,

                        decoration: InputDecoration(

                          labelText: "Password",

                          prefixIcon:
                              const Icon(Icons.lock),

                          suffixIcon: IconButton(

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


                          border: OutlineInputBorder(

                            borderRadius:
                                BorderRadius.circular(15),

                          ),

                        ),

                      ),


                      const SizedBox(height: 15),


                      Align(
                        alignment: Alignment.centerRight,

                        child: TextButton(

                          onPressed: () {},

                          child:
                              const Text("Forgot Password?"),

                        ),
                      ),


                      const SizedBox(height: 10),


                      SizedBox(

                        width: double.infinity,

                        height: 55,

                        child: ElevatedButton(

                          style:
                              ElevatedButton.styleFrom(

                            backgroundColor:
                                Colors.blue,

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


                      const SizedBox(height: 20),


                      const Divider(),


                      const SizedBox(height: 10),


                      Row(

                        mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,


                        children: const [

                          Column(
                            children: [

                              Icon(
                                Icons.location_on,
                                color: Colors.red,
                              ),

                              SizedBox(height: 5),

                              Text("Live Location"),

                            ],
                          ),


                          Column(
                            children: [

                              Icon(
                                Icons.qr_code_scanner,
                                color: Colors.green,
                              ),

                              SizedBox(height: 5),

                              Text("QR Scan"),

                            ],
                          ),


                          Column(
                            children: [

                              Icon(
                                Icons.support_agent,
                                color: Colors.orange,
                              ),

                              SizedBox(height: 5),

                              Text("Support"),

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