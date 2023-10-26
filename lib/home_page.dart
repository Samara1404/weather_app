import 'package:flutter/material.dart';
import 'package:weather_app/constants/constant_api.dart';
import 'package:dio/dio.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Future<dynamic> festData() async{
      final dio = Dio();
      final Response = await dio.get(ApiConst.addres);
      return Response;
    }

    @override
    void initState() {
      super.initState();
      
    }
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 8, 12, 46),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 90, 112, 182),
        centerTitle: true,
        title: Text('WEATHER APP',
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),
        ) ,
      ),
      body: FutureBuilder(
        future: festData(), 
        builder: (ctx, sn){
          return Padding(
            padding: const EdgeInsets.all(30),
            child: Center(
              child: Text(sn.toString(),
              style: TextStyle(fontSize: 22,fontWeight: FontWeight.w200),
              ),
            ),
          );
        }),
 );
  }
}
