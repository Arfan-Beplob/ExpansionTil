// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  ExpasionTile(),
    );
  }
}
class ExpasionTile extends StatefulWidget {
  const ExpasionTile({Key? key}) : super(key: key);

  @override
  State<ExpasionTile> createState() => _ExpasionTileState();
}

class _ExpasionTileState extends State<ExpasionTile> {
  final GlobalKey expansionTileKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.yellow,
                  child: ExpansionTile(
                    onExpansionChanged: (value) {
                      if (value) {
                        _scrollToSelectedContent(expansionTileKey: expansionTileKey);
                      }
                    },
                    leading: const Icon(Icons.animation),
                    title: const Text('Animals',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40
                      ),),
                    subtitle: const Text('Free Animals Photos',
                      style: TextStyle(
                          fontSize: 20
                      ),),
                    children: <Widget>[
                      Padding(padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Card(child: ListTile(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context)=>
                                          FreeImage(Image:"https://c1.peakpx.com/wallpaper/703/608/953/lion-feline-big-cat-wallpaper-preview.jpg")));
                                },
                                title: Text('Lion',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                            ))),
                            Card(child: ListTile(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context)=>
                                          FreeImage(Image:"https://cdn.stocksnap.io/img-thumbs/960w/tiger-animal_LK4FNPG2OA.jpg")));
                                },
                                title: Text('Tiger'))),
                            Card(child: ListTile(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context)=>
                                          FreeImage(Image:"https://i.pinimg.com/originals/23/98/4c/23984ccfc742d2b7af5d9639e4818eda.jpg")));
                                },
                                title: Text('Goat'))),
                            Card(child: ListTile(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context)=>
                                          FreeImage(Image:"https://i.pinimg.com/originals/28/26/d5/2826d58cfaca8cdadc134bd90e2a2415.jpg")));
                                },
                                title: Text('Horse'))),
                             Card(child: ListTile(
                                 onTap: (){
                                   Navigator.push(context, MaterialPageRoute(
                                       builder: (context)=>
                                           FreeImage(Image:"https://storage.needpix.com/rsynced_images/donkey-4079716_1280.jpg")));
                                 },
                                 title: Text('Donkey.'))),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                color: Colors.yellow,
                                child: ExpansionTile(
                                  leading: const Icon(Icons.animation),
                                  title: const Text('Animals',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40
                                    ),),
                                  subtitle: const Text('Free Animals Photos',
                                    style: TextStyle(
                                        fontSize: 20
                                    ),),
                                  children: <Widget>[
                                    Padding(padding: const EdgeInsets.all(8),
                                      child: Column(
                                        children: [
                                          Card(child: ListTile(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(
                                                    builder: (context)=>
                                                        FreeImage(Image:"https://c1.peakpx.com/wallpaper/703/608/953/lion-feline-big-cat-wallpaper-preview.jpg")));
                                              },
                                              title: const Text('Lion',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20
                                            ),
                                          ))),
                                          Card(child:  ListTile(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(
                                                    builder: (context)=>
                                                        FreeImage(Image:"https://cdn.stocksnap.io/img-thumbs/960w/tiger-animal_LK4FNPG2OA.jpg")));
                                              },
                                              title: const Text('Tiger'))),
                                          Card(child:  ListTile(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(
                                                    builder: (context)=>
                                                        FreeImage(Image:"https://i.pinimg.com/originals/23/98/4c/23984ccfc742d2b7af5d9639e4818eda.jpg")));
                                              },
                                              title: const Text('Goat'))),
                                          Card(child:  ListTile(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(
                                                    builder: (context)=>
                                                        FreeImage(Image:"https://i.pinimg.com/originals/28/26/d5/2826d58cfaca8cdadc134bd90e2a2415.jpg")));
                                              },
                                              title: const Text('Horse'))),
                                          Card(child:  ListTile(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(
                                                    builder: (context)=>
                                                        FreeImage(Image:"https://storage.needpix.com/rsynced_images/donkey-4079716_1280.jpg")));
                                              },
                                              title: const Text('Donkey.'))),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _scrollToSelectedContent({required GlobalKey expansionTileKey}) {
  final keyContext = expansionTileKey.currentContext;
  if (keyContext != null) {
    Future.delayed(const Duration(milliseconds: 1000)).then((value) {
      Scrollable.ensureVisible(keyContext,
          duration: const Duration(milliseconds: 200));
    });
  }
}
class FreeImage extends StatefulWidget {
  var Image;
   FreeImage({Key? key,
   required this.Image
   }) : super(key: key);

  @override
  State<FreeImage> createState() => _FreeImageState();
}

class _FreeImageState extends State<FreeImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image(image: NetworkImage(widget.Image),),
        ),
      ),
    );
  }
}
