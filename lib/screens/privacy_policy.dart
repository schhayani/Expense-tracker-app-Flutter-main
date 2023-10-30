import 'package:flutter/material.dart';
import '../models/database_provider.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  DatabaseProvider dbhealper = new DatabaseProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Privacy Policy"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Column(
          children: [
            Text(
              "Money Tracker \nPrivacy Policy",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "What information does the Application obtain?",
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                        "Automatically Collected Information: The Application may collect certain information automatically - more specifically information about the way you use the Application. We also collect behavioral application event data for analytics: access dates and times, app features or pages viewed, app crashes and other system activity and information.User Provided Data: we collect content submitted by users to us, such as bug reports, customer support communications. transaction-related information, such as when you make purchases, respond to any offers, or download or use applications from us; information you provide us when you contact us for help."),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
