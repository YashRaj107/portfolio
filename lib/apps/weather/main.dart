import 'package:flutter/material.dart';

void main(){
  runApp(const Weather());
}
class Weather extends StatelessWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'center title demo',
      theme: ThemeData(
        primaryColor: Colors.yellow,

        appBarTheme: const AppBarTheme(
          color: Colors.cyan,
          elevation: 0,
        ),
      ),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title:

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('The Weather App',textAlign: TextAlign.start,),
            Icon(Icons.add , ),
          ],
        ),
      ),
      drawer: Drawer(

      ),
      body: SingleChildScrollView ( child: Column(
        children: [
          Container(
            color: Colors.cyan,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,

            child: Column(

              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Icon(Icons.location_on_outlined,color: Colors.white,),
                    Text('Abbey wood',style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text('18°', style: TextStyle(
                        fontSize: 100,
                        color: Colors.white
                    ),
                    ),
                    Icon(Icons.cloud_rounded, size: 100,
                        color: Colors.white),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Overcast Clouds',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                    ),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  children:[
                    Text('Updated: Sun 28 August,11:34AM', style: TextStyle(
                      fontSize: 12,
                      color: Colors.white70,),
                      textAlign: TextAlign.end,
                    ),
                  ],),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const  EdgeInsets.fromLTRB(8,20,8,10),
                    child: Card(color: Colors.cyan.shade400,
                      elevation: 1,
                      margin:const EdgeInsets.fromLTRB(10,1,10,1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.water_drop, color: Colors.white,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text('Humidity', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                              Text('72%', style: TextStyle(color: Colors.white,),),
                            ],
                          ),
                          VerticalDivider(
                            thickness: 2,
                            color: Colors.white70,
                            indent: 20,
                            endIndent: 20,
                          ),
                          Icon(Icons.cloud_sharp, color: Colors.white,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text('Clouds',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                              Text('90%',style: TextStyle(color: Colors.white,),),
                            ],
                          ),
                          VerticalDivider(
                            thickness: 2,
                            color: Colors.white70,
                            indent: 20,
                            endIndent: 20,
                          ),
                          Icon(Icons.remove_red_eye_outlined, color: Colors.white,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text('Visibility',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                              Text('10.00km',style: TextStyle(color: Colors.white,),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8,10,8,20),
                    child: Card(color: Colors.cyan.shade400,
                      elevation: 1,
                      margin:const EdgeInsets.fromLTRB(10,1,10,1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.wind_power_sharp, color: Colors.white,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text('Wind', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                              Text('11.16 km/h', style: TextStyle(color: Colors.white,),),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.near_me, color: Colors.white,),

                              Text('NE',style: TextStyle(color: Colors.white,),
                              ),
                            ],
                          ),

                          VerticalDivider(
                            thickness: 2,
                            color: Colors.white70,
                            indent: 20,
                            endIndent: 20,
                          ),
                          Icon(Icons.speed_rounded, color: Colors.white,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text('Pressure',style:
                              TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                              Text('1024 hpa',style: TextStyle(color: Colors.white,),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Text('Load more...',style:
                TextStyle(color: Colors.white70,fontWeight: FontWeight.w900),
                  textAlign: TextAlign.end ,),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8,20,8,10),
                    child:
                    Card(color: Colors.cyan.shade400,
                      elevation: 1,
                      margin:const EdgeInsets.fromLTRB(10,1,10,1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.cloud_rounded, color: Colors.white,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text('Indore', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                              Text('17° Broken Clouds', style: TextStyle(color: Colors.white,),),
                            ],
                          ),
                          VerticalDivider(
                            thickness: 2,
                            color: Colors.white70,
                            indent: 20,
                            endIndent: 20,
                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Row(children: [
                                Icon(Icons.water_drop_rounded, color: Colors.white,),
                                Text('93%',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                              ],
                              ),
                              Row(children: [
                                Icon(Icons.cloud_rounded, color: Colors.white,),
                                Text('75%',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                              ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8,10,8,20),
                    child:
                    Card(color: Colors.cyan.shade400,
                      elevation: 1,
                      margin:const EdgeInsets.fromLTRB(10,1,10,1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.cloud_rounded, color: Colors.white,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text('London', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                              Text('17° Broken Clouds', style: TextStyle(color: Colors.white,),),
                            ],
                          ),
                          VerticalDivider(
                            thickness: 2,
                            color: Colors.white70,
                            indent: 20,
                            endIndent: 20,
                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Row(children: [
                                Icon(Icons.water_drop_rounded, color: Colors.white,),
                                Text('72%',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                              ],
                              ),
                              Row(children: [
                                Icon(Icons.cloud_rounded, color: Colors.white,),
                                Text('95%',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                              ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}



