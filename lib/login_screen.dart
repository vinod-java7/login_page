import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login_page/register_now.dart';
import 'package:login_page/repo/login_register_repo.dart';

class LoginScreen extends StatelessWidget {

  
  LoginScreen({super.key});

  final loginRepo = LoginRegisterRepo();
  final emailEdit = TextEditingController(text: "");
final passwordEdit = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My App")),
      drawer: Drawer(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/images/blue.jpeg'), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: emailEdit,
                  decoration: InputDecoration(
                      hintText: "Enter username", border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: passwordEdit,
                  decoration: InputDecoration(
                      hintText: "Enter password", border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      //print('login sucessful');
                       final result = await loginRepo.performLogin(emailEdit.text, passwordEdit.text);
                       if(result.message.isNotEmpty){
                      Fluttertoast.showToast(msg: result.message ?? "");
                    }else{
                     Fluttertoast.showToast(msg: "Login Successful");
                    }
                    },
                    child: Text("Login"),
                  ),
                  GestureDetector(
                    // ignore: void_checks
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterNow()),
                      );
                    
                    },
                    child: const TextButton(
                      onPressed: null,
                      child: Text('Register Now'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
