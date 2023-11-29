import 'package:flutter/material.dart';

class RegisterNow extends StatelessWidget {
  const RegisterNow({super.key});

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
                onPressed: () {
                  print('Registration successful');
                },
                child: Text("Register"),
              ),
            ],
          ),
        ));
  }
}
