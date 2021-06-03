import 'package:flutter/material.dart';

// video-11

// void main() {
//   runApp(
//    MaterialApp(
//     title: 'First App',
//     home: Scaffold(
//       body: Center(
//         child: (Text('Hello world')),
//       ),
//     ),
//   ));
// }

// video-12
// void main() {
//   runApp(MaterialApp(
//     title: 'First App',
//     home: Scaffold(
//       body: MyApp2(),
//     ),
//   ));
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           CustomButton('Click here'),
//           SizedBox(
//             height: 10,
//           ),
//           CustomButton('Ok'),
//           SizedBox(
//             height: 10,
//           ),
//           CustomButton('Live'),
//         ],
//       ),
//     );
//   }
// }

// class CustomButton extends StatelessWidget {
//   final String title;
//   CustomButton(this.title);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         print('OnTap asdf');
//       },
//       child: Container(
//         height: 40,
//         width: 100,
//         decoration: BoxDecoration(
//           shape: BoxShape.rectangle,
//           color: Colors.blue,
//         ),
//         child: Center(child: Text(title)),
//       ),
//     );
//   }
// }

// video-14

// class MyApp2 extends StatefulWidget {
//   MyApp2({Key key}) : super(key: key);

//   @override
//   _MyApp2State createState() => _MyApp2State();
// }

// class _MyApp2State extends State<MyApp2> {
//   String txt = "";
//   @override
//   void initState() {
//     txt = "Hello stateful widgets";
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(txt),
//           RaisedButton(
//             onPressed: () {
//               setState(() {
//                 txt = "xyz";
//               });
//               print("On Pressed");
//             },
//             child: Text('change'),
//           )
//         ],
//       )),
//     );
//   }
// }

// video-16

// void main() {
//   runApp(MaterialApp(
//     title: "Frist App",
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('Row and Column'),
//       ),
//       body: ListBuilders(),
//     ),
//   ));
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       width: 200,
//       child: Text('hello world'),
//       alignment: Alignment.center,
//       margin: EdgeInsets.all(100.0),
//       padding: EdgeInsets.all(15.0),
//       decoration: BoxDecoration(
//           color: Colors.green,
//           shape: BoxShape.rectangle,
//           border: Border.all(
//             width: 5,
//             color: Colors.red,
//           )),
//       transform: Matrix4.rotationZ(.5),
//     );
//   }
// }

// // video-17

// class RowsColumns extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       // crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Text("hi"),
//         Text('hello'),
//         Text('World'),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('hello'),
//             Text('World'),
//           ],
//         ),
//         Row(
//           children: [Text('Amar '), Text('Soanr '), Text('bangla')],
//         )
//       ],
//     );
//   }
// }

// video-18 (List view & List Tile)

// class ListTiles extends StatefulWidget {
//   // const ListTiles({ Key? key }) : super(key: key);

//   @override
//   _ListTilesState createState() => _ListTilesState();
// }

// class _ListTilesState extends State<ListTiles> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         ListTile(
//           leading: Container(
//             height: 20.0,
//             width: 20.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.red,
//             ),
//           ),
//           title: Text("item 1"),
//           trailing: Icon(Icons.arrow_forward),
//         ),
//         ListTile(
//           leading: Container(
//             height: 20.0,
//             width: 20.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.green,
//             ),
//           ),
//           title: Text("item 2"),
//           trailing: Icon(Icons.arrow_forward),
//         ),
//         ListTile(
//           leading: Container(
//             height: 20.0,
//             width: 20.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.blue,
//             ),
//           ),
//           title: Text("item 3"),
//           trailing: Icon(Icons.arrow_forward),
//         ),
//         ListTile(
//           leading: Container(
//             height: 20.0,
//             width: 20.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.pink,
//             ),
//           ),
//           title: Text("item 4"),
//           trailing: Icon(Icons.arrow_forward),
//         ),
//       ],
//     );
//   }
// }

// video-19 (list builder)

// class ListBuilders extends StatefulWidget {
//   // const ListBuilders({ Key? key }) : super(key: key);

//   @override
//   _ListBuildersState createState() => _ListBuildersState();
// }

// class _ListBuildersState extends State<ListBuilders> {
//   List<int> list = List();
//   @override
//   void initState() {
//     for (int i = 1; i <= 50; i++) {
//       list.add(i);
//     }
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: list.length,
//       itemBuilder: (BuildContext context, int index) {
//         return ListTile(
//           leading: Container(
//             height: 20.0,
//             width: 20.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.blue,
//             ),
//           ),
//           title: Text("item no ${list[index]}"),
//           trailing: Icon(Icons.arrow_forward),
//         );
//       },
//     );
//   }
// }

// video-20 (list view deep dive)

// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

/* -----------------------------------------
                   main method
-----------------------------------------*/
// void main() => runApp(MyApp());

/* -----------------------------------------
                   MyApp
-----------------------------------------*/
// class MyApp extends StatelessWidget {
//   static final String title = 'ListView Deep Dive';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: title,
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: HomePage(title: title),
//     );
//   }
// }

/* -----------------------------------------
                  HomePage
-----------------------------------------*/
// class HomePage extends StatefulWidget {
//   final String title;

//   HomePage({@required this.title});

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int index = 0;
//   final items = List.generate(100, (counter) => 'Item: $counter');

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: buildListViews(),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: index,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.view_list),
//             label: 'Basic',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.list_alt_rounded),
//             label: 'Vertical',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.line_style),
//             label: 'Horizontal',
//           ),
//         ],
//         onTap: (int index) => setState(() => this.index = index),
//       ),
//     );
//   }

// Widget buildListViews() {
//   if (index == 0) {
//     return buildBasicListView();
//   } else if (index == 1) {
//     return buildVerticalListView();
//   } else if (index == 2) {
//     return buildHorizontalListView();
//   } else {
//     return Container();
//   }
// }

// Basic List View Builder method

// Widget buildBasicListView() {
//   return ListView(
//     children: [
//       ListTile(
//         leading: CircleAvatar(
//           backgroundColor: Colors.brown.shade800,
//           child: Text('AK'),
//         ),
//         title: Text('Ab Karim'),
//         subtitle: Text('Flutter Developer'),
//         trailing: Icon(Icons.star, color: Colors.orange),
//       ),
//       ListTile(
//         leading: CircleAvatar(
//           backgroundColor: Colors.brown.shade800,
//           child: Text('AR'),
//         ),
//         title: Text('Ab Rarim'),
//         subtitle: Text('Android Developer'),
//         trailing: Icon(Icons.star, color: Colors.orange),
//       ),
//       ListTile(
//         leading: CircleAvatar(
//           backgroundColor: Colors.brown.shade800,
//           child: Text('AB'),
//         ),
//         title: Text('Abul'),
//         subtitle: Text('iOS Developer'),
//         trailing: Icon(Icons.star, color: Colors.orange),
//       ),
//     ],
//   );
// }

// Vertical List View Builder method

// Widget buildVerticalListView() {
//   return ListView.separated(
//     separatorBuilder: (context, index) => Divider(
//       color: Colors.black,
//     ),
//     itemCount: items.length,
//     itemBuilder: (context, index) {
//       return ListTile(
//         title: Text(items[index]),
//       );
//     },
//   );
// }

// Horizontal List View Builder method

// Widget buildHorizontalListView() {
//   return ListView.separated(
//     padding: EdgeInsets.all(16),
//     scrollDirection: Axis.horizontal,
//     separatorBuilder: (context, index) => Divider(
//       color: Colors.black,
//     ),
//     itemCount: items.length,
//     itemBuilder: (context, index) {
//       return Container(
//         width: 100,
//         height: 50,
//         child: ListTile(
//           title: Text(items[index]),
//         ),
//       );
//     },
//   );
// }
// }

// video-21(stack widgets)

void main() {
  runApp(MaterialApp(
    title: "This is first App",
    home: Scaffold(
      appBar: AppBar(
        title: Text('Stack example'),
      ),
      body: CardsApp(),
    ),
  ));
}

class StackExample extends StatelessWidget {
  // const StackExample({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Container(
    //         height: 200,
    //         width: 200,
    //         color: Colors.red,
    //       ),
    //       Container(
    //         width: 100,
    //         height: 100,
    //         color: Colors.green,
    //       ),
    //       Container(
    //         width: 50,
    //         height: 50,
    //         color: Colors.blue,
    //       )
    //     ],
    //   ),
    // );

    return Center(
      child: Stack(
        // mainAxisAlignment: MainAxisAlignment.center,
        // alignment: Alignment.topCenter,
        overflow: Overflow.clip,
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
          Positioned(
            top: 0,
            right: 0,
            height: 120,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ),
          Positioned(
            bottom: -20,
            right: 0,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}

// video-22(grid view)

class GridViews extends StatefulWidget {
  // const GridViews({ Key? key }) : super(key: key);

  @override
  _GridViewsState createState() => _GridViewsState();
}

class _GridViewsState extends State<GridViews> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          Container(
            color: Colors.green,
            child: Text('Hi'),
            alignment: Alignment.center,
          ),
          Container(
            color: Colors.green,
            child: Text('Hi'),
            alignment: Alignment.center,
          ),
          Container(
            color: Colors.green,
            child: Text('Hi'),
            alignment: Alignment.center,
          ),
          Container(
            color: Colors.green,
            child: Text('Hi'),
            alignment: Alignment.center,
          ),
          Container(
            color: Colors.green,
            child: Text('Hi'),
            alignment: Alignment.center,
          ),
          Container(
            color: Colors.green,
            child: Text('Hi'),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}

// video-23(Grid view builder)

class GridViewBuilders extends StatefulWidget {
  // const GridViewBuilders({ Key? key }) : super(key: key);

  @override
  _GridViewBuildersState createState() => _GridViewBuildersState();
}

class _GridViewBuildersState extends State<GridViewBuilders> {
  List<int> list = List();
  @override
  void initState() {
    for (int i = 0; i <= 20; i++) {
      list.add(i);
    }
    ;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext Context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.green,
              child: Text('${list[index]}'),
              alignment: Alignment.center,
            ),
          );
        });
  }
}

// video-24(card widget)
class CardsApp extends StatelessWidget {
  // const Cards({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 300,
        height: 300,
      ),
      color: Colors.blue,
      elevation: 5,
      shadowColor: Colors.amber,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(color: Colors.red, width: 2)),
    );
  }
}


// video-25(text-widgets)
