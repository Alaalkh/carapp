import 'package:carapp/Pages/VerficiationPage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController countryController = TextEditingController();
    TextEditingController countryController1 = TextEditingController();

    @override
    void initState() {
      countryController.text = "+91";
      super.initState();
    }

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.close,
          color: Colors.grey,
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(left: 25, right: 25, top: 150),
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 40,
                            child: TextField(
                              controller: countryController,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                hintText: "+1",
                                hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 22),
                              ),
                            ),
                          ),
                          const Text(
                            "|",
                            style: TextStyle(fontSize: 33, color: Colors.grey),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextField(
                              controller: countryController1,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.cancel,
                                    color: Color.fromARGB(255, 203, 202, 202),
                                  ),
                                  labelText: "123 456 789",
                                  labelStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 33,
                                      fontWeight: FontWeight.bold)),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 36, left: 22),
            child: Row(
              children: [
                Container(
                  child: const Icon(
                    Icons.check_circle_outline,
                    color: Color.fromARGB(255, 198, 196, 196),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Container(
                    child: const Text(
                  "Agree to our  ",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                )),
                Container(
                    child: const Text(
                  "Terms  ",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.green,
                  ),
                )),
                Container(
                    child: const Text(
                  "And  ",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                )),
                Container(
                    child: const Text(
                  "Data Policy  ",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.green,
                  ),
                ))
              ],
            ),
          ),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>VerficationPage()));
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
                )),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 33),
                child: const Divider(
                  height: 20,
                  indent: 122,
                  endIndent: 133,
                  color: Color.fromARGB(255, 202, 201, 201),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 122),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                      child: const Divider(
                    color: Color.fromARGB(255, 202, 201, 201),
                    indent: 88,
                  )),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 4),
                  child: const Text(
                    "Login with",
                    style: TextStyle(
                      color: Color.fromARGB(255, 202, 201, 201),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: const Divider(
                        color: Color.fromARGB(255, 202, 201, 201),
                        endIndent: 77),
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Container(
                child: Image.asset("assets/facebook.png",
                    scale: 0.99,
                    height: 100,
                    width: 166,
                    fit: BoxFit.scaleDown),
                margin: const EdgeInsets.only(left: 66, top: 22),
                width: 66,
                height: 66,
                decoration: const BoxDecoration(
                    color: Color(0xFFFF1F2F3), shape: BoxShape.circle),
              ),
              Container(
                child: Image.asset("assets/search.png",
                    scale: 0.99,
                    height: 100,
                    width: 166,
                    fit: BoxFit.scaleDown),
                margin: const EdgeInsets.only(left: 22, top: 22),
                width: 66,
                height: 66,
                decoration: const BoxDecoration(
                    color: Color(0xFFFF1F2F3), shape: BoxShape.circle),
              ),
              Container(
                child: Image.asset("assets/twitter.png",
                    scale: 0.99,
                    height: 100,
                    width: 166,
                    fit: BoxFit.scaleDown),
                margin: const EdgeInsets.only(left: 22, top: 22),
                width: 66,
                height: 66,
                decoration: const BoxDecoration(
                    color: Color(0xFFFF1F2F3), shape: BoxShape.circle),
              )
            ],
          )
        ],
      ),
    );
  }
}
