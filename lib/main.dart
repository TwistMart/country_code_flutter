import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title:  Text("Phone Field")
        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal:16),

          child: Form(
            key: _formKey,         
             child: Column(
             children: [

              SizedBox(
                height: 50,
              ),

              TextField(
                decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),

                  ),

                ),
              ),

              SizedBox(
                height: 20,
              ),
              
              TextField(
                decoration: InputDecoration(
                   labelText: "Phone",
                   hintText: "Enter your phone number",
                   border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                   )
                )
              ),

              SizedBox(
                height: 20,
              ),

              // Phone field with country code

              IntlPhoneField(
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  hintText: "Enter your country code",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  )
                )
              ),

              SizedBox(
                height: 10,
              ),

              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print("Validated");
                  } else {
                    print("Not Validated");
                  }
                },
                child: Text("Submit"),
              )
              
             ], 
            ),
          ),
        ) ,


      ),   
    );
  }
}

