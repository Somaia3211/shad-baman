import 'package:flutter/material.dart';
import 'package:shad_baman/pages/login_screen.dart';
import 'package:shad_baman/pages/registrition_page.dart';

class First extends StatelessWidget{
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          SizedBox(height: 30,),
          Center(
            child: Image(
              image: AssetImage('assets/happy.jpg'),
            ),
          ),
          SizedBox(height: 20,),
          Text('حال هر روزت',style: TextStyle(fontSize: 30),),
          SizedBox(height: 40,),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                  child: Center(child: Text('ورود به سیستم',style: TextStyle(fontSize: 25),)),
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    primary: Colors.white,
                    backgroundColor: Color(0XFF347850)
                  ),
                ),

                SizedBox(height: 30,),
                TextButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegistrationPage()));
                },
                  child: Center(child: Text('راجستر به سیستم',style: TextStyle(fontSize: 25),)),
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    primary: Colors.white,
                    backgroundColor: Color(0XFF347850)
                  ),
                ),
              ],
            ),
          ),

        ],

      ),
    );
  }
}
