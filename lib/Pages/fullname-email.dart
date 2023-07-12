import 'package:carapp/Pages/Mylocation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormInput extends StatelessWidget {
  const FormInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading:  IconButton(onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.arrow_back),
            color: Colors.grey, 
          ),
        ),
        body: const Form());
  }
}

class Form extends StatelessWidget {
  const Form({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 33, top: 44),
          child: const Text(
            "Full name",
            style: TextStyle(fontSize:13,color: Color(0xFFF8E8E93)),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 33, right: 33),
          child: const TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.cancel,
                color: Color.fromARGB(255, 203, 202, 202),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 33, top: 44),
          child: const Text(
            "E-mail",
            style: TextStyle(fontSize:13,color: Color(0xFFF8E8E93)),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 33, right: 33),
          child: const TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.cancel,
                color: Color.fromARGB(255, 203, 202, 202),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 33, top: 44),
          child: const Text(
            "password",
            style: TextStyle(fontSize:13,color: Color(0xFFF8E8E93)),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 33, right: 33),
          child: const TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.remove_red_eye_rounded,
                color: Color.fromARGB(255, 203, 202, 202),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 33, top: 44),
          child: const Text(
            "Confirm password",
            style: TextStyle(fontSize:13,color: Color(0xFFF8E8E93)),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 33, right: 33),
          child: const TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.remove_red_eye_rounded,
                color: Color.fromARGB(255, 203, 202, 202),
              ),
            ),
          ),
        ), GestureDetector(onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MyLocation()));
        },
          child: Container(
              padding: const EdgeInsets.only(left: 122, top: 20),
              margin: const EdgeInsets.only(left: 33, right: 33, top: 88),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: const Color(0xFF1DB854),

                borderRadius: BorderRadius.circular(38),),
              child: const Text(
                "Continue",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              )),
        ),
      ],
    );
  }
}
