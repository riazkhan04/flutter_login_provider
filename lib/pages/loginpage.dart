
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nandankananappflutter/pages/dashboard.dart';

class LoginPage extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String username='',password='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.green[600]!,
                  Colors.green[400]!,
                  Colors.green[200]!
                ]
            )
        ),
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                // Container(
                //     alignment: Alignment.center,
                //     padding: const EdgeInsets.all(10),
                //     child: const Text(
                //       'Nandankanan App',
                //       style: TextStyle(
                //           color: Colors.white,
                //           fontWeight: FontWeight.bold,
                //           fontSize: 25),
                //     )),
                Container(
                  child: Image.asset(
                    'images/logo.png',
                    // width: MediaQuery.of(context).size.width,
                    width: 180,
                    height:100,
                    fit: BoxFit.cover,
                  )),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20,
                          color : Colors.white),
                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      //forgot password screen
                    },
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(fontSize: 15,
                          color : Colors.white),
                    )),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    color: Colors.black,
                    child: ElevatedButton(
                      child: const Text('Login',
                        style: TextStyle(
                          fontSize: 20,
                            color: Colors.black,
                        ),
                      ),
                      // style: ButtonStyle(
                      //     overlayColor: MaterialStateProperty.all<Color>(Colors.black12)),
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.black,
                        animationDuration: Duration(milliseconds: 1000),
                        primary: Colors.white,
                        shadowColor: Colors.white,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      // ElevatedButton.styleFrom(
                      //     primary: Colors.white,
                      //     textStyle: TextStyle(
                      //         fontSize: 30,
                      //         fontWeight: FontWeight.bold)),
                      onPressed: () {
                        username=nameController.text;
                        password=passwordController.text;
                        if(username.isEmpty){
                          print('Please enter username !');
                        }else if(password.isEmpty){
                          print('Please enter password !');
                        }
                        else {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (BuildContext context) => Dashboard()));
                          print(username);
                          print(password);
                        }
                      },
                    )
                ),
                Row(
                  children: <Widget>[
                    const Text('Does not have account?',
                      style:TextStyle(
                          color: Colors.white70
                      ) ,
                    ),
                    TextButton(
                      child: const Text(
                        'Sign up',
                        style: TextStyle(fontSize: 18,
                            color: Colors.white),
                      ),
                      onPressed: () {
                        //signup screen
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            )
        ),
      ),
    );
  }
}
