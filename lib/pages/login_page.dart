import 'package:flutter/material.dart';
import 'package:pvr/utils/routes.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  //String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 10)),
              Image.asset(
                "assets/login.png",
                fit: BoxFit.cover,
                height: 300,
              ),
              SizedBox(height: 20),
              Text(
                "Welcome to Infoogle ",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Usernam",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onChanged: (Value) {
                      //  name = Value;
                        setState(() {});
                      },
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Passwoed",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        )),
                    SizedBox(height: 20),

                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context,MyRoutes.homeRout);
                      },
                      child: Container(
                        height: 40,
                        width: 150,
                        alignment: Alignment.center,
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                       decoration: BoxDecoration(
                         color: Colors.deepPurpleAccent,
                         borderRadius: BorderRadius.circular(8)
                       ),
                      ),
                    )

                    // uper contaner ma bhee button banaya gaye hai dusre tareka sa

                    // ElevatedButton(
                    //   child: Text("Login"),
                    //   //style: TextButton.styleFrom(maximumSize: Size(10, 10)),
                    //
                    //   onPressed: () {
                    //     Navigator.pushNamed(context,MyRoutes.homeRout);
                    //   },
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
