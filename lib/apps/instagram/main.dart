import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Controllers/bnb_controller.dart';

void main() {
  runApp(const insta());
}

class insta extends StatelessWidget {
  const insta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Center Title Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
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
   final BNBController bnbCont = Get.put(BNBController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Instagram"),
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (val) {
              bnbCont.changeIndex(val);
            },
            currentIndex: bnbCont.currentIndex.value,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: 'Favourite'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Setting'),
            ]),
        body:Obx(() => IndexedStack(
            index: bnbCont.currentIndex.value,
            children:[ Column(
              children: [
                Center(
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            color: Colors.black,
                          ),
                          const Text(
                            'Instagram',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          Icon(
                            Icons.more_vert,
                            size: 18,
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width,
                        color: Colors.black,
                      ),
                      Row(
                        children: [
                          Icon(Icons.favorite_border),
                          Icon(Icons.messenger_outline),
                          Icon(Icons.share),
                          Icon(Icons.bookmark),
                        ],
                      ),
                      Text(
                        'this is my biopic🎇🎇🎇',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '@yashraj very nice picture',
                        style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        '@diya fab',
                        style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
                      )
                    ],
                   ),
                ),
              ],
            ),
              Center(
                child: Card(
                  child: Icon(Icons.home),
                ),
              ),
              Center(
                child: Card(
                  child: Icon(Icons.favorite),
                ),
              )
            ]
        )),
    );
  }
}
