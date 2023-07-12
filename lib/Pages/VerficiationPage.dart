import 'package:carapp/Pages/fullname-email.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerficationPage extends StatelessWidget {
  const VerficationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.grey,
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 40),
              child: const Text(
                "Verification",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 27),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 22),
            width: 155,
            height: 33,
            child: const Text(
              "we texted you a code to verify your phone number.",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 10),
              textAlign: TextAlign.center,
            ),
          ),
          const NumberWidget(),
          ButtonWidget()
        ],
      ),
    );
  }
}

class NumberWidget extends StatelessWidget {
  const NumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 65,
          margin: const EdgeInsets.only(left: 33, top: 45),
          height: 66,
          padding: const EdgeInsets.only(),
          child: const TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "-",
                hintStyle: TextStyle(color: Colors.grey)),
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xFFF1F2F3),
          ),
        ),
        Container(
          width: 65,
          margin: const EdgeInsets.only(left: 22, top: 45),
          height: 66,
          child: const TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "-",
                hintStyle: TextStyle(color: Colors.grey)),
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xFFF1F2F3),
          ),
        ),
        Container(
          width: 65,
          margin: const EdgeInsets.only(left: 22, top: 45),
          height: 66,
          child: const TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "-",
                hintStyle: TextStyle(color: Colors.grey)),
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xFFF1F2F3),
          ),
        ),
        Container(
          width: 65,
          margin: const EdgeInsets.only(left: 22, top: 45),
          height: 66,
          child: const TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "-",
                hintStyle: TextStyle(color: Colors.grey)),
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xFFF1F2F3),
          ),
        )
      ],
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FormInput()));
            },
            child: Container(
                padding: const EdgeInsets.only(left: 122, top: 20),
                margin: const EdgeInsets.only(left: 33, right: 33, top: 88),
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFF1DB854),
                  borderRadius: BorderRadius.circular(38),
                ),
                child: const Text(
                  "Continue",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ))),
        // Container(
        //     padding: const EdgeInsets.only(left: 122, top: 20),
        //     margin: const EdgeInsets.only(left: 33, right: 33, top: 7),
        //     width: double.infinity,
        //     height: 60,
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(38),
        //     ),
        //     child: const Text(
        //       "Resend in 54 Sec",
        //       style: TextStyle(
        //           color: const Color(0xFF1DB854),
        //           fontSize: 11,
        //           fontWeight: FontWeight.bold),
        //     )),
      ],
    );
  }
}
