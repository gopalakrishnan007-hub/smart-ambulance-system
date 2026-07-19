import 'package:flutter/material.dart';

class AmbulanceHome extends StatelessWidget {
  const AmbulanceHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Smart Ambulance"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.local_hospital,
              size: 100,
              color: Colors.red,
            ),

            const SizedBox(height: 20),

            const Text(
              "Emergency Ambulance",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 40),

            ElevatedButton.icon(
              onPressed: () {
                // Emergency alert function later
              },
              icon: const Icon(Icons.warning),
              label: const Text("SEND EMERGENCY ALERT"),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton.icon(
              onPressed: () {
                // GPS function later
              },
              icon: const Icon(Icons.location_on),
              label: const Text("SHARE LIVE LOCATION"),
            ),
          ],
        ),
      ),
    );
  }
}