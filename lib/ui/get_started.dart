import 'package:flutter/material.dart';
import 'package:weather/models/const.dart';
import 'package:weather/ui/welcome.dart';
class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Constants myConstants=Constants();
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: myConstants.primaryColor.withOpacity(.5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/get-started.png',
              width: 500,
              height: 250,),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context)=>const Welcome()));
                },
                child: Container(
                  height: 50,
                  width: size.width*0.6,
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child: Text('Get Started',style: TextStyle(color: Colors.white,fontSize: 20,
                    fontWeight: FontWeight.w700),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
