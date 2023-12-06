import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login_page/repo/login_register_repo.dart';

class RegisterNow extends StatelessWidget {
 RegisterNow({super.key});

final loginRepo = LoginRegisterRepo();
  final emailEdit = TextEditingController(text: "");
final passwordEdit = TextEditingController(text: "");
final userNameEdit = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Registation Form')),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('lib/images/blue.jpeg'),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    'Name :',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: SizedBox(width: 5),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        height: 13,
                        child: TextField(
                          controller: userNameEdit,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Email :',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        height: 13,
                        child: TextField(
                            controller: emailEdit,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'password :',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: SizedBox(width: 4),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        height: 13,
                        child: TextField(
                            controller: passwordEdit,
                            obscureText: true,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.0),
              ElevatedButton(
                onPressed: () async{
                  final isSuccess = await loginRepo.performRegister(userNameEdit.text, emailEdit.text, passwordEdit.text);
                 
                 Fluttertoast.showToast(msg: isSuccess? "User Registered successfully": "User Registration Failed");
                
                },
                child: Text("Register"),
              ),
            ],
          ),
        ));
  }
}
