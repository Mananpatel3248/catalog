import 'package:catalogapp/utiles/modules.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {

  String name = "";
  final _formkey= GlobalKey<FormState>();

  movetohome(BuildContext context){
    if(_formkey.currentState!.validate()){
    Navigator.pushNamed( context, module.homeroute);}

  }
  @override
  Widget build(BuildContext context) {
    return Material(

      color: context.canvasColor,

      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(

            children: [
              Image.asset("assets/img/loginimg.png",fit: BoxFit.cover),
              SizedBox(
                height: 20,

              ),
              Text("welcome $name",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
                child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter name",
                      labelText: "Name",
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "username cannot be empty";
                      }

              },
                    onChanged: (value){
                      name=value;
                      setState((){});
                    },
                  ),

                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Passcode",
                      labelText: "Passcode",

                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "passcode cannot be empty";
                      }
                      else if(value.length!=6){
                        return "passcode atleast 6 digits";
                      }

                    },
                  )
                ],),
              ),
              SizedBox(
                height: 50,

              ),

              InkWell(
                onTap: ()=>movetohome(context),

                child: Container(
                  width: 100,
                  height: 40,
                  alignment: Alignment.center,

                  child: Text("Log-in",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16

                  ),
                  ),
                decoration: BoxDecoration(
                    color: context.theme.buttonColor,
                  borderRadius: BorderRadius.circular(8)
                ),
                ),
              )
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.pushNamed( context, module.homeroute);
              //     print("Tnx for log-in"); },
              //   child: Text("log-in"),
              //   style: TextButton.styleFrom(
              //     backgroundColor: Colors.purple,
              //     minimumSize:Size(150, 40)
              //   ),
              // )

            ],
          ),
        ),
      ),

    );



}}
