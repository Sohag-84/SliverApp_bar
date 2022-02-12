import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Widget addListTitle(String titleName,String subtitleName){
    return ListTile(
      title: Text(titleName),
      subtitle: Text(subtitleName),
      leading:  CircleAvatar(
        radius: 20,
        child: Text(titleName[0]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              pinned: true,
              expandedHeight: 200,
              centerTitle: true,
              backgroundColor: Colors.green,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Sliver App"),
              ),
            ),

            SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    addListTitle("Injamul Haq Sohag", "Flutter developer"),
                    addListTitle("Nahid", "Web designer"),
                    addListTitle("Riad", "Web designer"),
                    addListTitle("Mahdi", "Javascript developer"),
                    addListTitle("Porosh", "Flutter developer"),
                    addListTitle("Peash", "Mobile Application developer"),
                    addListTitle("Afnan", "Full Stack developer"),
                    addListTitle("Udoy", "MERN stack developer"),
                    addListTitle("Riju", "Android developer"),
                    addListTitle("Yakob", "Ethical hacker"),
                    addListTitle("Sakib", "Data scientist"),
                    addListTitle("Jummon", "Web developer"),
                    addListTitle("Shakil", "Flutter developer")
                  ]
                )
            )
          ],
        ),
      ),
    );
  }
}
