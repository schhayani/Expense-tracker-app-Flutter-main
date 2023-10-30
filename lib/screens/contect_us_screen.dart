import 'package:flutter/material.dart';

class ContectUsScreen extends StatefulWidget {
  const ContectUsScreen({super.key});

  @override
  State<ContectUsScreen> createState() => _ContectUsScreenState();
}

class _ContectUsScreenState extends State<ContectUsScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController msgController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Contact Us"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10.0),
            Text(
              "Contact",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Text("I am available for Freelancing work and collaboration."),
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                        filled: true,
                        hintText: "Name",
                        border: InputBorder.none),
                  ),
                  SizedBox(height: 8.0),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        filled: true,
                        hintText: "Email",
                        border: InputBorder.none),
                  ),
                  SizedBox(height: 8.0),
                  TextField(
                    controller: msgController,
                    maxLines: 7,
                    decoration: InputDecoration(
                        filled: true,
                        hintText: "Message",
                        border: InputBorder.none),
                  ),
                  SizedBox(height: 10.0),
                  InkWell(
                    onTap: () {
                      nameController.clear();
                      emailController.clear();
                      msgController.clear();
                    },
                    child: Container(
                      width: double.maxFinite,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Submit",
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
