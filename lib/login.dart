import 'package:flutter/material.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({super.key});

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/front.jpg'),fit:BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35,top: 130),
              child: Text(
                'Hello User :)',
                style: TextStyle(fontFamily: 'Tektur', fontSize: 55,color: Colors.white),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,right: 35, left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sign In',style: TextStyle(
                            fontFamily: 'Tektur',fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),
                        ),
                        CircleAvatar(radius: 25,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          color: Colors.black,
                          onPressed:(){},
                          icon: Icon(Icons.arrow_forward),
                        ),)
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
              Row(
                children: [
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, 'register');
                  }, child: Text('Sign Up',style: TextStyle(
                      decoration:TextDecoration.underline,
                    fontSize: 18,fontFamily: 'Tektur',
                  color:Colors.white ),
                  )),
                  TextButton(onPressed: (){}, child: Text('Forgot Password',style: TextStyle(
                      decoration:TextDecoration.underline,
                      fontSize: 18,fontFamily: 'Tektur',
                      color:Colors.white ),
                  ))
                ],
              )

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



