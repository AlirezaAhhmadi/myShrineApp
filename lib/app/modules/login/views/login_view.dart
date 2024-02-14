import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
                child: TextButton(
                  onPressed: () {},
                  child: Icon(Icons.arrow_back_outlined),
                ),
              )
            ],
          ),
          Flexible(
              child: SizedBox(
                height: 10,
              )),
          Column(
            children: [
              Icon(
                Icons.diamond_sharp,
                size: 250,
              ),
              Text(
                "SHRINE",
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
          Flexible(
              child: SizedBox(
                height: 100,
              )),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 400),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Username",
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Password",
                        ),
                      ),
                    ],),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text("CANCEL"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("NEXT"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
