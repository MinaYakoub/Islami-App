import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraDetail extends StatefulWidget {
  static String routeName = 'sura';

  @override
  State<SuraDetail> createState() => _SuraDetailState();
}

class _SuraDetailState extends State<SuraDetail> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as suraArgs;
    loadFile(args.index);
    return Stack(children: [
      Image.asset(
        'assets/images/default.png',
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
      Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black87),
          centerTitle: true,
          title: Text('${args.name}',
              style: Theme.of(context).textTheme.titleLarge),
        ),
        body:verses.length==0?Center(
          child: CircularProgressIndicator(),
        ) :
          Container(
                margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.08,
                    horizontal: MediaQuery.of(context).size.width * 0.05),
                padding: EdgeInsets.all(11),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(25)),
            child: ListView.builder(itemBuilder: (context, index){
              return Text(verses[index],textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleSmall,);
            },
            itemCount: verses.length,),
          ),
        ),
        
    
    ]);
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {
      
    });
  }
}

class suraArgs {
  String name;
  int index;
  suraArgs({required this.name, required this.index});
}
