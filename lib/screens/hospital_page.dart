import 'package:flutter/material.dart';
import 'hospital_home.dart';


class HospitalLoginPage extends StatefulWidget {

  const HospitalLoginPage({super.key});


  @override
  State<HospitalLoginPage> createState() =>
      _HospitalLoginPageState();

}



class _HospitalLoginPageState
    extends State<HospitalLoginPage> {


  bool hidePassword = true;


  final hospitalIdController =
  TextEditingController();

  final emailController =
  TextEditingController();

  final passwordController =
  TextEditingController();



  void login() {


    if (
    hospitalIdController.text == "hospital" &&
        emailController.text == "hospital@gmail.com" &&
        passwordController.text == "1234"
    ) {


      Navigator.push(

        context,

        MaterialPageRoute(

          builder: (context) =>
          const HospitalHomePage(),

        ),

      );


    } else {


      ScaffoldMessenger.of(context)
          .showSnackBar(

        const SnackBar(

          content:
          Text("Invalid Hospital Login"),

        ),

      );


    }

  }



  @override
  void dispose() {

    hospitalIdController.dispose();

    emailController.dispose();

    passwordController.dispose();

    super.dispose();

  }



  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(

        title: const Text(
          "Hospital Login",
        ),

        backgroundColor: Colors.teal,

      ),



      body: Padding(

        padding: const EdgeInsets.all(25),


        child: Column(

          mainAxisAlignment:
          MainAxisAlignment.center,


          children: [


            const Icon(

              Icons.local_hospital,

              size:100,

              color:Colors.teal,

            ),



            const SizedBox(height:30),



            TextField(

              controller:
              hospitalIdController,


              decoration:
              const InputDecoration(

                labelText:"Hospital ID",

                border:
                OutlineInputBorder(),

              ),

            ),



            const SizedBox(height:20),



            TextField(

              controller:
              emailController,


              decoration:
              const InputDecoration(

                labelText:"Email",

                border:
                OutlineInputBorder(),

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

                labelText:"Password",


                border:
                const OutlineInputBorder(),


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

              ),

            ),



            const SizedBox(height:30),



            SizedBox(

              width:
              double.infinity,


              height:55,


              child: ElevatedButton(

                onPressed:
                login,


                style:
                ElevatedButton.styleFrom(

                  backgroundColor:
                  Colors.teal,

                ),


                child:
                const Text(

                  "LOGIN",

                  style:TextStyle(

                    color:Colors.white,

                    fontSize:18,

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