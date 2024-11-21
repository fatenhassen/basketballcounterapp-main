import 'package:flutter/material.dart';

void main() {
  runApp(pointscounter());
}

class pointscounter extends StatefulWidget {
  @override
  State<pointscounter> createState() => _pointscounterState();
}

class _pointscounterState extends State<pointscounter> {
  int teamAPoints=0;
  int teamBPoints = 0 ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Team A",
                      style: TextStyle
                      (fontSize: 32),
                      ),
                      Text('$teamAPoints',
                      style: TextStyle
                      (fontSize: 150),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50 ),
                        ),
                        onPressed: ()
                        {
                          teamAPoints++;
                          setState(() {
                            
                          });
                        }, 
                        child: Text('Add 1 Point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        )
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50 ),
                        ),
                        onPressed: (){
                          teamAPoints+=2;
                          setState(() {
                            
                          });
                        }, 
                        child: Text('Add 2 Point',style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          
                        ),
                        )
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50 ),
                        ),
                        onPressed: (){
                          teamAPoints+=3;
                          setState(() {
                            
                          });
                        }, 
                        child: Text('Add 3 Point',style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          
                        ),
                        )
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    indent: 50,
                    endIndent: 50,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Team B",
                      style: TextStyle
                      (fontSize: 32),
                      ),
                      Text('$teamBPoints',
                      style: TextStyle
                      (fontSize: 150),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50 ),
                        ),
                        onPressed: (){
                          teamBPoints++;
                          setState(() {
                            
                          });
                        }, 
                        child: Text('Add 1 Point',style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                
                        ),
                        )
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50 ),
                        ),
                        onPressed: (){
                          teamBPoints+=2;
                          setState(() {
                            
                          });
                        }, 
                        child: Text('Add 2 Point',style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          
                        ),
                        )
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50 ),
                        ),
                        onPressed: (){
                          teamBPoints+=3;
                          setState(() {
                            
                          });
                        }, 
                        child: Text('Add 3 Point',style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          
                        ),
                        )
                      ),
                    ],
                  ),
                ),
              
              ],
            ),
          
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50 ),
                      ),
                      onPressed: (){
                        
                        setState(() {
                          teamAPoints=0;
                          teamBPoints=0;
                        });
                      }, 
                      child: Text('reset',style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,

                      ),
                      )
                    )
          ],
        )
      ),
    );
  }
}