import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
bool _boolIcon=false;
IconData _lightIcon = Icons.wb_sunny;
IconData _darkIcon = Icons.nights_stay;

ThemeData _lightTheme = ThemeData(
  primaryColor: Colors.white,
brightness: Brightness.light,
);

ThemeData _darkTheme = ThemeData(
  primaryColor: Colors.red,
brightness: Brightness.dark,
);

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _boolIcon? _darkTheme:_lightTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 232, 198, 196),
          title: const Center(child: Text("Dark Theme")),
          actions: <Widget>[
            IconButton(onPressed: (){
              setState(() {
                _boolIcon=!_boolIcon;
              });
            }, 
            icon: Icon(_boolIcon?_lightIcon:_darkIcon),
            ),
          ],
        ),
        body: Padding(
        padding: const EdgeInsets.only(left: 15.0,top: 8.0,right: 15.0),
        child: ListView(
          children: [
            Row(
              children: [
                const Text("15 hours ago",style: TextStyle(
                  color: Color.fromARGB(255, 54, 54, 53),
                  ),
                  ),
                const SizedBox(width: 100.0,),
                ElevatedButton.icon(
                  icon: const Icon(Icons.message,
                  color: Colors.black,
                  size: 15.0,),
                  
                  label: const Text("Message",style: TextStyle(color: Colors.black,),
                  ),
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 179, 107, 102),
                  ),
                 ),
                const Icon(Icons.more_horiz),
               
              ],
            ),
            const SizedBox(height: 10.0,),
            const Text("Have a great day with my amazing client all the way from NewYork",
            style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),
            ),
            const SizedBox(height: 10.0,),
            SizedBox(
              height: 200.0,
              width: 100.0,
              
              child: Image.asset('images/img1.jpg',
              fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8.0,),
            const Row(
              children: [
                Icon(Icons.arrow_upward),
                Text("56.9k"),
                Icon(Icons.arrow_downward),
                SizedBox(width: 70.0,),
                Icon(Icons.message_rounded),
                SizedBox(width: 5.0,),
                Text("4682"),
                SizedBox(width: 65.0,),
                Icon(Icons.save_sharp),
                Icon(Icons.download),
              ],
              
            ),
            const SizedBox(height: 10.0,),
            Row(
              children: [
                const Text("15 hours ago",style: TextStyle(
                  color: Color.fromARGB(255, 54, 54, 53),
                  ),
                  ),
                const SizedBox(width: 100.0,),
                ElevatedButton.icon(
                  icon: const Icon(Icons.message,
                  color: Colors.black,
                  size: 15.0,),
                  
                  label: const Text("Message",style: TextStyle(color: Colors.black,),
                  ),
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 179, 107, 102),
                  ),
             
                 ),
                const Icon(
                  Icons.more_horiz
                ),
                 
              ],
            ),
             const SizedBox(height: 10.0,),
            const Text("Have a great day with my amazing client all the way from NewYork",
            style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),
            ),
            const SizedBox(height: 10.0,),
            const Row(
              children: [
                Text("Sure",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                SizedBox(width: 240,),
                Text("45 Vote"),
              ],
            ),
            const SizedBox(height: 5.0,),
            Row(
              children: [
                Container(
                  height: 10.0,
                  width: 150.0,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 167, 37, 28), 
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                ),
                Container(
                  height: 10.0,
                  width: 180.0,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 241, 228, 227), 
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                ),
              ],
            ),
            const SizedBox(height: 10.0,),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Search here',
              ),
            ),
            
          ],

        ),
      ),
     bottomNavigationBar: CurvedNavigationBar(
      backgroundColor: const Color.fromARGB(255, 239, 165, 160),
      onTap: (index){
        print(index);
      },
      items: const [
        Icon(Icons.home,color: Color.fromARGB(255, 239, 165, 160),),
        Icon(Icons.favorite,color: Color.fromARGB(255, 239, 165, 160),),
        Icon(Icons.settings,color: Color.fromARGB(255, 239, 165, 160),),


     ]),
     ),
     );
  }
}